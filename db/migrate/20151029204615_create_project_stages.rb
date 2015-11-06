class CreateProjectStages < ActiveRecord::Migration
  def change
    create_table :project_stages do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
