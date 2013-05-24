module Runner
  def call_script(executable_script)
    output = `#{executable_script}`
    { output: output, pid: $?.pid, exit_code: $?.to_s }
  end
end