state Tracking::Goal.Evaluating () is
goalachievement: instance of GoalAchievement;
begin
  // Start a timer that periodically causes evaluation of goal achievement.
  GoalAchievement.initialize();
  goalachievement := find_one GoalAchievement();
  schedule this.evaluationTimer generate Goal.Evaluate() to this delay @PT0.000001S@ * goalachievement.evaluationPeriod delta @PT0.000001S@ * goalachievement.evaluationPeriod;
  
  generate Goal.evaluationComplete() to this;
end state;
