class CreateDailyMetrics < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_metrics do |t|
      t.belongs_to :team, null: false, foreign_key: true
      t.integer :tasks_count

      t.timestamps
    end
  end
end
