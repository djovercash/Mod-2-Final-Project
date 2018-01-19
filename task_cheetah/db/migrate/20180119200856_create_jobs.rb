class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.integer :cheetah_id
      t.integer :task_id

      t.timestamps
    end
  end
end
