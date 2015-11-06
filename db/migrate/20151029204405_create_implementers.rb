class CreateImplementers < ActiveRecord::Migration
  def change
    create_table :implementers do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
