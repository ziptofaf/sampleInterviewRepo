class SendDailyMetricJob < ApplicationJob
  def perform(metric)
    Client.new.call(metric)
  end

  class Client
    BASE_URL = "http://metrics.example.com"

    def call(metric)
      RestClient.post(
        "#{BASE_URL}/daily_metrics",
        {id: metric.id, tasks_count: metric.tasks_count}.to_json,
        {content_type: :json, accept: :json}
      )
    end
  end
end
