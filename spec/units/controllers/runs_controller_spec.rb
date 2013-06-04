require 'spec_helper'

describe RunsController do
  include FocusedController::RSpecHelper

  describe RunsController::Index do
    it "should be successful" do
      response.should be_success
    end
  end

  describe RunsController::Show do
    it "should be successful" do
      run = Run.make!
      subject.params = { :id => run.id }
      subject.call
      response.should be_success
    end
  end

  describe RunsController::Create do
    it "should create a project run" do
      project = Project.make!
      subject.params = { project_id: project.id, run: {} }

      expect { subject.call }.to change(Run, :count).by(1)
      # it should run associated scripts and store the rusult in ScrpitReult
      # but this is tested in RunnerOnProject context
      response.should redirect_to("/projects/#{project.id}/runs/#{Run.last.id}")
    end
  end

end
