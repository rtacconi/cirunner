require 'spec_helper'

describe ScriptLister do
  it "returns an ordered list of script" do
    project = Project.make!
    project.script_lists << ScriptList.new(script_name: 'script1.erb', ordinal: 1)
    project.script_lists << ScriptList.new(script_name: 'script2.erb', ordinal: 2)
    project.extend ScriptLister
    script_list = project.ordered_script_list
    script_list.first.script_name.should == 'script1.erb'
    script_list.last.script_name.should == 'script2.erb'
  end
end
