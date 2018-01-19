class Task < ApplicationRecord
  belongs_to :snake, :class_name => "User"

  has_many :jobs
  has_many :cheetahs, :through => :jobs, :class_name => "User"

  has_many :category_tasks
  has_many :categories, through: :category_tasks

end
