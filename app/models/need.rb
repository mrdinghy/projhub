class Need < ActiveRecord::Base
  has_many :needs_projects, :dependent => :destroy
  has_many :projects, :through => :needs_projects


  def get_code
    obj='NEED'
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
