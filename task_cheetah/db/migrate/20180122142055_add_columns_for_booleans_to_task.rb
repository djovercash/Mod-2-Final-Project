class AddColumnsForBooleansToTask < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :cheetah, :boolean, default: false
    add_column :tasks, :snake, :boolean, default: false
    add_column :tasks, :complete, :boolean, default: false
  end
end
