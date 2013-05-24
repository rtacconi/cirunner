class RemoveOrdinalFromScripts < ActiveRecord::Migration
  def change
    remove_column :scripts, :ordinal
  end
end
