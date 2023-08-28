class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.belongs_to :team, null: true, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
