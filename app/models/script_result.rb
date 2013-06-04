class ScriptResult < ActiveRecord::Base
  validates :script_name, presence: true
  belongs_to :run
end
