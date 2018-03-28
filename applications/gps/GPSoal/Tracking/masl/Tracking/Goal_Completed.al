state Tracking::Goal.Completed () is
openAchievement: instance of Achievement;
session: instance of WorkoutSession;
currentGoalSpec: instance of GoalSpec;
nextGoalSpec: instance of GoalSpec;
begin
  // Stop executing this goal and begin executing the next one, if there is one.
  
  // Stop the goal-evaluation timer, ignoring the return code which indicates 
  //   whether a timer event was in flight when the timer was cancelled.
  cancel this.evaluationTimer;
  
  // If this goal has an open achievement record, close it.
  openAchievement := this->R14.has_open.Achievement;
  if ( null /= openAchievement ) then
    openAchievement.close();
  end if;
  
  // Add this goal to the collection of those that have already executed.
  session := this->R11.is_currently_executing_within.WorkoutSession;
  link this R13.was_executed_within session;
  
  // Remove this goal from the collection of currently executing ones.
  unlink this R11.is_currently_executing_within session;
  
  // Find the next goal specification in the sequence and start executing it, if it exists.
  currentGoalSpec := this->R9.specified_by.GoalSpec;
  
  nextGoalSpec := find_one (session->R10.includes.GoalSpec)( sequenceNumber = (currentGoalSpec.sequenceNumber + 1) );
    
  if ( null /= nextGoalSpec ) then
    Goal.initialize( nextGoalSpec.sequenceNumber );
  end if;
end state;
