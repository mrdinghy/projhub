class Province < ActiveRecord::Base
  has_many :projects
  has_many :project_tasks
end
