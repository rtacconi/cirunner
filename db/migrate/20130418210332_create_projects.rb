class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :repository_url
      t.string :repository_type

      t.timestamps
    end
  end
end
