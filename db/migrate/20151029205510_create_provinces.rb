class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :name
      t.text :description
      t.string :capital
      t.decimal :population
      t.decimal :area
      t.string :iso

      t.timestamps null: false
    end
  end
end
