class Task < ApplicationRecord
  belongs_to :snake, :class_name => "User"

  has_many :jobs, dependent: :destroy
  has_many :cheetahs, :through => :jobs, :class_name => "User"

  has_many :category_tasks, dependent: :destroy
  has_many :categories, through: :category_tasks

  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }, allow_nil: true
  validates :cheetah_points, numericality: { greater_than_or_equal_to: 1 }


  def true_false_task
    !Job.exists?(task_id: self.id)
  end

  def check_points
    @user = User.find(self.snake_id)
    if self.cheetah_points > @user.cheetah_points
      false
    else
      true
    end
  end

  def claim_check
    Job.cheetah_claim(self.id)
  end

  def name_check
    Job.cheetah_name(self.id)
  end

  def owner_find
    User.find(self.snake_id)
  end


  def google_map
    address = self.address.gsub(/\s/,'+')
    address = address.gsub(',+',',')
    "https://www.google.com/maps/embed/v1/place?key=AIzaSyD-wjjCNt9v69Qtk8KYVe0kY8FUky7sDNw&q=#{address}"
    # "https://maps.googleapis.com/maps/api/staticmap?center=#{self.address}&size=300x300&zoom=15&maptype=roadmap&markers=color:blue%7C#{self.address}"
  end

end
