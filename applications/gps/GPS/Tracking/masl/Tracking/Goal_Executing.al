state Tracking::Goal.Executing () is
disposition: GoalDisposition;
workoutTimer: instance of WorkoutTimer;
achievement: instance of Achievement;
begin
  // Determine whether this goal is currently being achieved.
  disposition := this.evaluateAchievement();
  
  // Update achievement records if necessary.  There are four cases:
  //   0. Still not achieving this goal. 
  //   1. Just started achieving this goal.
  //   2. Just stopped achieving this goal.
  //   3. Still achieving this goal.
  // For cases 0 and 3, there is nothing to be done for achievement records.
  // Case 1 requires the creation of a new achievment record, storing the start time.
  // Case 2 requires the storing of the end time for the open achievement record.
  if ( (this.disposition /= Achieving) and (disposition = Achieving) ) then
    // Case 1, create achievement record, store start time, relate it as open record.
    workoutTimer := this->R11.is_currently_executing_within.WorkoutSession->R8.is_timed_by.WorkoutTimer;
    achievement := create Achievement( session_startTime => this.session_startTime, spec_sequenceNumber => this.spec_sequenceNumber, goal_ID => this.ID, startTime => workoutTimer.time );
    link this R14.has_open achievement;
  elsif ( (this.disposition = Achieving) and (disposition /= Achieving) ) then
    // Case 2, store end time, relate as recorded record, unrelate as open record.
    achievement := this->R14.has_open.Achievement;
    achievement.close();
  end if;
  
  // Update disposition of this goal.
  this.disposition := disposition;
  
  // Determine whether execution of this goal is complete, 
  //  and if so, advance to the next one if it exists.
  this.evaluateCompletion();
end state;
