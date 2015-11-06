class Proposal < ActiveRecord::Base
  has_many :possibilities, :dependent => :destroy
  has_many :needs, :through => :possibilities
  has_one :study

  def get_status
    if !self.approval_date.blank? and !self.approval_date.nil?
      statusname = 'Approved'
    elsif !self.submit_date.blank? and !self.submit_date.nil?
      statusname = 'Submitted-In Review'
    else
      statusname = 'Development'
    end
    return statusname
  end

  def get_code
    obj='PREQ'
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
