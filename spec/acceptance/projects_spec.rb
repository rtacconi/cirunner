require 'spec_helper'

describe "Projects" do
  context "when a user is logged in" do
    it "should be able to create a new project"
    it "should be able to edit a project"
  end

  context "when a project is created" do
    it "should clone the repository"
    it "should install the dependencies"
    it "should run the tests"
  end

  context "when a project repository address is modified" do
    it "should clone the repository"
    it "should install the dependencies"
    it "should run the tests"
  end

  context "when a project name is modified" do
    it "should not clone the repository"
    it "should not run the tests"
  end

  describe "listing" do
    it "renders a list of the projects accessible by the user"
    it "shows the status of the tests"
    it "shows the time of the next test execution"
    it "provides a link to the project details"
  end

  describe "details page" do
    it "shows the project information"
    it "provides the possibility to start the test runner"
    it "has a link to the edit form"
  end
end
