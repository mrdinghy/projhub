class CreateIdentifications < ActiveRecord::Migration
  def change
    create_table :identifications do |t|
      t.integer :project_id
      t.integer :need_id

      t.timestamps null: false
    end
  end
end
