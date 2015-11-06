class AddColumnsToProjectsTaskcalcs < ActiveRecord::Migration
  def change
    add_column :projects, :calcscheduletasks, :boolean
    add_column :projects, :calcfinancetasks, :boolean
  end
end
