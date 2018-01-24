class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.integer :snake_id
      t.integer :rating
      t.integer :cheetah_points
      t.boolean :cheetah, default: false
      t.boolean :rabbit, default: false
      t.string :address

      t.timestamps
    end
  end
end
