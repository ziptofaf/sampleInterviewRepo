# Assume that this job is ran on a daily basis.
class TasksAssignmentJob
  def perform_now
    teams = Team.all
    10.times do
      assign_tasks_evenly(teams, generate_tasks)
    end
  end

  private

  def assign_tasks_evenly(teams, tasks)
    i = 0
    tasks.each do |task|
      teams[i].tasks << task
      i += 1
      i  = 0 if i >= teams.length
    end
  end

  def generate_tasks
    rand(50..70).times.map { Task.create! }
  end
end