class AddApprovalDateToStudies < ActiveRecord::Migration
  def change
    add_column :studies, :approval_date, :datetime
  end
end
