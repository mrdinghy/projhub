class CreateProjectDocuments < ActiveRecord::Migration
  def change
    create_table :project_documents do |t|
      t.integer :project_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
