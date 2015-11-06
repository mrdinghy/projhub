class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.string :name
      t.integer :fiscalyear
      t.text :description

      t.timestamps null: false
    end
  end
end
