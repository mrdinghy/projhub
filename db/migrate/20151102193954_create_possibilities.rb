class CreatePossibilities < ActiveRecord::Migration
  def change
    create_table :possibilities do |t|
      t.integer :need_id
      t.integer :proposal_id

      t.timestamps null: false
    end
  end
end
