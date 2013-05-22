class ScriptsController < ApplicationController
  def index
    @scripts = Dir["#{Rails.root}/app/scripts/*"]
  end
end
