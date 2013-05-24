module ScriptLister
  def ordered_script_list
    self.script_lists.order(:ordinal)
  end
end