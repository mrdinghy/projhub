class AddColumnsToProjectsExpenditureTaskcomplete < ActiveRecord::Migration
  def change
    add_column :project_tasks, :expenditures, :decimal
    add_column :project_tasks, :taskcomplete, :boolean
  end
end
