module ScriptRenderer
  def render_script(script)
    content = File.open("#{Rails.root}/app/scripts/#{script}").read
    renderer = ERB.new(content)
    renderer.result
  end
end