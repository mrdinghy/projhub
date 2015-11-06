class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.string :name
      t.integer :proposal_id
      t.text :description
      t.datetime :submit_date
      t.text :problem
      t.text :current
      t.text :challenges
      t.text :interventions
      t.text :economic
      t.text :social
      t.text :environmental
      t.text :financial
      t.text :other
      t.text :recommendations

      t.timestamps null: false
    end
  end
end
