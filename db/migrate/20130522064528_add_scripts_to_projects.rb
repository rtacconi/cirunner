class AddScriptsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :scripts, :text
  end
end
