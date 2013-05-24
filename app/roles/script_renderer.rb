module ScriptRenderer
  def render_script(script)
    content = File.open(script).read
    renderer = ERB.new(content)
    renderer.result
  end
end