class RunsController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @runs = @project.runs
  end

  def show
    @project = Project.find(params[:project_id])
    @run = Run.find(params[:id])
  end

  def create
    @project = Project.find(params[:project_id])
    RunnerOnProject.new(@project).call
    @run = @project.runs.last
    render 'show'
  end

  def update
  end
end
