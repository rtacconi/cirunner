module RunsController
  class Action < ApplicationController
    include FocusedController::Mixin
    expose(:project) { Project.find(params[:project_id]) }
  end

  class Index < Action
    expose(:runs) { project.runs }
  end

  class Show < Action
    expose(:run) { Run.find(params[:id]) }
  end

  class Create < Action
    expose(:run) { RunnerOnProject.new(project).call }

    def call
      redirect_to project_run_path project, run
    end
  end
end
