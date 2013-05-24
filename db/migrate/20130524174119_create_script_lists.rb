class CreateScriptLists < ActiveRecord::Migration
  def change
    create_table :script_lists do |t|
      t.integer :project_id
      t.integer :script_id
      t.integer :ordinal

      t.timestamps
    end
  end
end
