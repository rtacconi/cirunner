class Run < ActiveRecord::Base
  belongs_to :project
  has_many :script_results
end
