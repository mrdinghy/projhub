class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :location
      t.date :plan_start
      t.date :plan_end
      t.date :actual_start
      t.date :actual_end
      t.decimal :project_value
      t.string :lat
      t.string :long
      t.integer :project_type_id
      t.integer :implementer_id
      t.integer :province_id

      t.timestamps null: false
    end
  end
end
