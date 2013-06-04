class DropScripts < ActiveRecord::Migration
  def change
    drop_table :scripts
    remove_column :projects, :scripts
  end
end
