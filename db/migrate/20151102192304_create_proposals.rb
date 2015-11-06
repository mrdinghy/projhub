class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :name
      t.text :description
      t.datetime :submit_date

      t.timestamps null: false
    end
  end
end
