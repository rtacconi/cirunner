module Runner
  def call_script(executable_script)
    %x(#{executable_script})
  end
end