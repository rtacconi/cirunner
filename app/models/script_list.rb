class ScriptList < ActiveRecord::Base
  belongs_to :project
  validates :script_name, presence: true
  validates :project, presence: true
  validates :ordinal, uniqueness: true
end
