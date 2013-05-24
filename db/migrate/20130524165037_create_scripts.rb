class CreateScripts < ActiveRecord::Migration
  def change
    create_table :scripts do |t|
      t.string :name
      t.integer :ordinal

      t.timestamps
    end
  end
end
