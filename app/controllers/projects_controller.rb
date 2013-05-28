module ProjectsController
  class Action < ApplicationController
    include FocusedController::Mixin

    def project_params
      params.require(:project).permit(:name, :repository_url, :repository_type)
    end
  end

  # GET /projects
  class Index < Action
    expose(:projects) { Project.all }
  end

  # GET /projects/1
  class Show < Action
    expose(:project) { Project.find(params[:id]) }
  end

  # GET /projects/new
  class New < Action
    expose(:project) { Project.new }
  end

  # GET /projects/1/edit
  class Edit < Action
    expose(:project) { Project.find(params[:id]) }
  end

  # POST /projects
  class Create < Action
    expose(:project) { Project.new(project_params) }

    def call
      respond_to do |format|
        if project.save
          format.html { redirect_to project, notice: 'Project was successfully created.' }
          format.json { render action: 'show', status: :created, location: project }
        else
          format.html { render action: 'new' }
          format.json { render json: project.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /projects/1
  class Update < Action
    expose(:project) { Project.find(params[:id]) }

    def call
      respond_to do |format|
        if project.update(project_params)
          format.html { redirect_to project, notice: 'Project was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: project.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  class Destroy < Action
    expose(:project) { Project.find(params[:id]) }

    def call
      Project.find(params[:id]).destroy

      respond_to do |format|
        format.html { redirect_to projects_url }
        format.json { head :no_content }
      end
    end
  end
end
