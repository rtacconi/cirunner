require 'spec_helper'

describe RunnerOnProject do
  before(:each) { @project = Project.make! }

  it "runs all scripts associated with a project" do
    @project.stub(:render_script).and_return("echo test")
    @project.should_receive(:call_script).with("echo test").and_return(
      { output: "test\n", pid: '2234', exit_code: 0 }
    )

    @project.script_lists << ScriptList.new(script: Script.new(name: 'script1.erb'), ordinal: 1)
    run = RunnerOnProject.new(@project).call
  end

  it "stores the output and the PID" do
    @project.stub(:render_script).and_return("echo test")
    @project.should_receive(:call_script).with("echo test").and_return(
      { output: "test\n", pid: '2234', exit_code: 0 }
    )

    @project.script_lists << ScriptList.new(script: Script.new(name: 'script1.erb'), ordinal: 1)
    run = RunnerOnProject.new(@project).call
    script_result = run.script_results.first

    script_result.pid.should > 1
    script_result.output.should == "test\n"
  end

  context "when the command is successfull" do
    it "stores 0 as exit code" do
      @project.stub(:render_script).and_return("echo test")
      @project.should_receive(:call_script).with("echo test").and_return(
        { output: "", pid: '2234', exit_code: 0 }
      )
      @project.script_lists << ScriptList.new(script: Script.new(name: 'script1.erb'), ordinal: 1)
      run = RunnerOnProject.new(@project).call
      script_result = run.script_results.first

      script_result.exit_code.should == 0
    end
  end

  context "when the command is not successfull" do
    it "stores an ingeter grater than 0 as exit code" do
      @project.stub(:render_script).and_return("wrong_command")
      @project.should_receive(:call_script).with("wrong_command").and_return(
        { output: "", pid: '2234', exit_code: 127 }
      )
      @project.script_lists << ScriptList.new(script: Script.new(name: 'script1.erb'), ordinal: 1)
      run = RunnerOnProject.new(@project).call
      script_result = run.script_results.first

      script_result.exit_code.should == 127
    end
  end
end