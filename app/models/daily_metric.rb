class DailyMetric < ApplicationRecord
  belongs_to :team

  def self.add_new_metric(team_id)
    metric = DailyMetric.new(team_id:, day: today, tasks_count: 1)
    metric.save!

    metric
  end

  def self.update_metric(team_id)
    metric = DailyMetric.find_by(day: today, team_id: )
    metric.tasks_count += 1
    metric.save!

    metric
  end

  def self.today
    Date.current
  end
end
