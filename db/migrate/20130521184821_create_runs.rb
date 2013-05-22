class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.text :output
      t.integer :project_id

      t.timestamps
    end
  end
end
