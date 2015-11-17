class ProjectTask < ActiveRecord::Base
  validates_numericality_of :task_value
  validates_numericality_of :task_weight




  extend EnumerateIt

  has_enumeration_for :task_type

  belongs_to :project
  belongs_to :project_stage
  belongs_to :province





  def get_status
    if !self.actual_end.blank? and !self.actual_start.nil?
      statusname = 'Completed'
    elsif !self.actual_start.blank? and !self.actual_start.nil?
      statusname = 'In Progress'
    else
      statusname = 'Planning'
    end
    return statusname
  end




  def get_code
    obj='TASK'
    if self.id < 10
      idcode = obj + '-0000' + self.id.to_s
    elsif self.id < 100
      idcode = obj + '000' + self.id.to_s
    elsif self.id < 1000
      idcode = obj + '-00' + self.id.to_s
    elsif self.id < 10000
      idcode = obj + '-0' + self.id.to_s
    else
      idcode = obj + '-' + self.id.to_s
    end
    return idcode
  end

end
