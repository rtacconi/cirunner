class ScriptResult < ActiveRecord::Base
  belongs_to :script
  belongs_to :run
end
