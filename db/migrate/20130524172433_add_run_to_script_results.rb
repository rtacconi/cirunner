class AddRunToScriptResults < ActiveRecord::Migration
  def change
    add_column :script_results, :run_id, :integer
  end
end
