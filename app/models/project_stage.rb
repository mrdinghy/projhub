class ProjectStage < ActiveRecord::Base
  has_many :project_tasks
end