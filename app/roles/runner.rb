module Runner
  def call_script(executable_script)
    output = `#{executable_script}`
    { output: output, pid: $?.pid, exit_code: $?.exitstatus }
  end
end