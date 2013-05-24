class CreateScriptResults < ActiveRecord::Migration
  def change
    create_table :script_results do |t|
      t.text :output
      t.integer :pid
      t.integer :exit_code
      t.integer :script_id

      t.timestamps
    end
  end
end
