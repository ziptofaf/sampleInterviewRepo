require "test_helper"

class TaskTest < ActiveSupport::TestCase
  test "adding to the metrics" do
    team = Team.create!(name: 'sample_team')
    task = Task.create(description: 'sample task')
    task.update!(team: team)
    metric = DailyMetric.last
    assert(metric.tasks_count == 1)

    task = Task.create(description: 'sample task')
    task.update!(team: team)
    assert(metric.reload.tasks_count == 2)
  end
end
