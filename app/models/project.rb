class Project < ActiveRecord::Base
  validates :name, :repository_type, :repository_url, presence: true

  has_many :runs

  serialize :scripts
end
