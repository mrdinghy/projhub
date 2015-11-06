class AddColumnsToProjectsTotalExpenditures < ActiveRecord::Migration
  def change
    add_column :projects, :total_expended, :decimal
  end
end
