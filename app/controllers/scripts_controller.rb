class ScriptsController < ApplicationController
  respond_to :json

  def index
    respond_with Script.all
  end

end
