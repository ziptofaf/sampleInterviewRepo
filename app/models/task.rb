class Task < ApplicationRecord
  belongs_to :team, optional: true
  after_save :make_daily_metric

  def make_daily_metric
    return if team.nil?

    metric = if DailyMetric.exists?(team: team, day: DailyMetric.today)
               DailyMetric.update_metric(team.id)
             else
               DailyMetric.add_new_metric(team.id)
             end

    SendDailyMetricJob.perform_later(metric)
  end
end
