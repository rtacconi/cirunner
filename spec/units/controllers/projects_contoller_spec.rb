require 'spec_helper'

describe ProjectsController do
  include FocusedController::RSpecHelper

  describe ProjectsController::Index do
    it "should be successful" do
      response.should be_success
    end
  end

  describe ProjectsController::New do
    it "should be successful" do
      response.should be_success
    end
  end

  describe ProjectsController::Show do
    it "should be successful" do
      project = Project.make!
      subject.params = { :id => project.id }
      subject.call
      response.should be_success
    end
  end

  describe ProjectsController::Create do
    it "should create a project" do
      project = Project.make
      subject.params = { project: project.attributes }
      expect { subject.call }.to change(Project, :count).by(1)
      response.should redirect_to("/projects/#{Project.last.id}")
    end

    it "should not redirect on validation error" do
      project = Project.make
      attributes = project.attributes
      attributes[:name] = ''
      subject.params = { project: attributes }
      expect { subject.call }.to change(Project, :count).by(0)
      response.should render_template :new
    end
  end

  describe ProjectsController::Update do
    it "should update post" do
      project = Project.make!
      subject.params = { id: project.id, project: { name: 'new_name'} }
      subject.call
      response.should redirect_to("/projects/#{project.id}")
    end

    it "should not redirect on validation error" do
      project = Project.make!
      attributes = project.attributes
      attributes[:name] = ''
      subject.params = { id: project.id, project: attributes }
      expect { subject.call }.to change(Project, :count).by(0)
      response.should render_template :edit
    end
  end

  describe ProjectsController::Destroy do
    it "should delete a project" do
      project = Project.make!
      subject.params = { id: project.id, project: project.attributes }
      expect { subject.call }.to change(Project, :count).by(-1)
      response.should redirect_to("/projects")
    end
  end
end