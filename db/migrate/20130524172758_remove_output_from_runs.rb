class RemoveOutputFromRuns < ActiveRecord::Migration
  def change
    remove_column :runs, :output
  end
end
