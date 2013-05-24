class ScriptList < ActiveRecord::Base
  belongs_to :project
  belongs_to :script
  validates :project, presence: true
  validates :ordinal, uniqueness: true
end
