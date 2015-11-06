class AddApprovalDateToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :approval_date, :datetime
  end
end
