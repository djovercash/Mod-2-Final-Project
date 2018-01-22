class Category < ApplicationRecord
  has_many :category_tasks
  has_many :tasks, through: :category_tasks


  def open_tasks
    self.tasks.select { |task| task.true_false_task }
  end
end
