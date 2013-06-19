class RunnerOnProject
  attr_reader :project

  def initialize(project)
    @project = project
  end

  def call
    @project.extend ScriptLister
    @project.extend ScriptRenderer
    @project.extend Runner
    run = Run.new(project: @project)

    # load an ordered script list
    @project.ordered_script_list.each do |script_list|
      # for each script run it
      executable_script = @project.render_script(script_list.script_name)
      # then put pid, exit code and output in script_result
      script_result = ScriptResult.new(script_name: script_list.script_name)
      result = @project.call_script(executable_script)
      script_result.pid = result[:pid]
      script_result.exit_code = result[:exit_code]
      script_result.output = result[:output]
      # add all script_result to the run object to have an ordered list of results, one per script
      run.script_results << script_result
    end

    run.save

    run
  end
end