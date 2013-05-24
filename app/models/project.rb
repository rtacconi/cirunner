class Project < ActiveRecord::Base
  validates :name, :repository_type, :repository_url, presence: true

  has_many :runs

  has_many :script_lists

  serialize :scripts
end
