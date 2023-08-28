class AddDayToDailyMetric < ActiveRecord::Migration[6.1]
  def change
    add_column :daily_metrics, :day, :date
  end
end
