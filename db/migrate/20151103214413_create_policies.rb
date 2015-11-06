class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|
      t.string :name
      t.string :reference
      t.text :description
      t.date :effective_date
      t.date :expire_date

      t.timestamps null: false
    end
  end
end
