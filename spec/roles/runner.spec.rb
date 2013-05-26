require 'spec_helper'

describe Runner do
  it "should return an exit code greater than zero if the command generate an error" do
    project = OpenStruct.new
    project.extend Runner
    result = project.call_script('wrong_command')
    result[:exit_code].should > "0"
  end

  it "should return a PID" do
    project = OpenStruct.new
    project.extend Runner
    result = project.call_script('echo test')
    result[:pid].should > 1
  end

  it "should return the command's output" do
    project = OpenStruct.new
    project.extend Runner
    result = project.call_script('echo test')
    result[:output].should == "test\n"
  end
end