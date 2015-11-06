class AddFiscalyearToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :fiscalyear, :integer
  end
end
