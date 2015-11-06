class CreateProjectTasks < ActiveRecord::Migration
  def change
    create_table :project_tasks do |t|
      t.string :name
      t.text :description
      t.string :location
      t.date :plan_start
      t.date :plan_end
      t.date :actual_start
      t.date :actual_end
      t.decimal :task_value
      t.integer :task_weight
      t.string :lat
      t.string :long
      t.integer :project_stage_id
      t.integer :project_id
      t.integer :province_id
      t.integer :task_type
      t.integer :predecessor_id

      t.timestamps null: false
    end
  end
end
