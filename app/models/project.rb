class Project < ActiveRecord::Base
  validates :name, :repository_type, :repository_url, presence: true
end
