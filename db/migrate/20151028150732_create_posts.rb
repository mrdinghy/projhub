class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.integer :post_type
      t.decimal :post_value

      t.timestamps null: false
    end
  end
end
