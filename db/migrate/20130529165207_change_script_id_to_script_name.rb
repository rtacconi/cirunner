class ChangeScriptIdToScriptName < ActiveRecord::Migration
  def change
    remove_column :script_lists, :script_id
    remove_column :script_results, :script_id
    add_column    :script_lists, :script_name, :string
    add_column    :script_results, :script_name, :string
  end
end
