class RunnerOnProject
  attr_reader :project

  def initialize(project)
    @project = project
  end

  def call
    @project.extend ScriptRenderer
    @project.extend Runner
    @project.scripts.each do |script|
      executable_script = @project.render_script(script)
      executable_script.inspect
      output = @project.call_script(executable_script)
      @project.runs << Run.new(output: output)
    end
  end
end