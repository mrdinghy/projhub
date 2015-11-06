class Project < ActiveRecord::Base
  extend EnumerateIt

  belongs_to :project_type

  has_many :project_tasks
  has_many :project_documents
  belongs_to :implementer
  belongs_to :province

  has_many :identifications, :dependent => :destroy
  has_many :needs, :through => :identifications


  def get_status
    if !self.actual_end.blank? and !self.actual_start.nil?
      statusname = 'Scheduled Completed'
    elsif !self.actual_start.blank? and !self.actual_start.nil?
      statusname = 'In Progress'
    else
      statusname = 'Planning'
    end
    return statusname
  end

  def get_code
    obj='PROJ'
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
