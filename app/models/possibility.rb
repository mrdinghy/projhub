class Possibility < ActiveRecord::Base
  belongs_to :proposal
  belongs_to :need
end
