class ScriptListsController < ApplicationController
  respond_to :json

  def index
    respond_with ScriptList.all
  end

  def show
    respond_with ScriptList.all
  end
end