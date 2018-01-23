class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.integer :snake_id
      t.boolean :cheetah, default: false
      t.boolean :rabbit, default: false
      t.integer :rating

      t.timestamps
    end
  end
end
