class User < ApplicationRecord
  has_secure_password
  has_many :tasks, :foreign_key => 'snake_id'
  has_many :jobs, :through => :tasks
  has_many :cats, :foreign_key => 'cheetah_id', :class_name => "Job"

  validates :name, presence: true
  validates :username, presence: true, uniqueness: true

  def cheetah_status
    hold = self.cats.select { |cat| cat.task.rating }
    hold = hold.map { |cat| cat.task.rating }
    hold = hold.inject(0.0) { |sum, el| sum + el } / hold.size
    if hold.nan?
      "Complete tasks to earn Cheetah Points"
    else

      case hold
      when 4.5..5
        ["Diamond Cheetah", hold]
      when 4.0..4.4
        ["Platinum Cheetah", hold]
      when 3.5..3.9
        ["Gold Cheetah", hold]
      when 3.0..3.4
        ["Silver Cheetah", hold]
      when 2.5..2.9
        ["Bronze Cheetah", hold]
      when 2.0..2.4
        ["Steel Cheetah", hold]
      when 1.5..1.9
        ["Brick Cheetah", hold]
      when 1.0..1.4
        ["Wood Cheetah", hold]
      when 0.5..0.9
        ["Mud Cheetah", hold]
      else
        ["Old Broken Down Rusty Cheetah", hold]
      end
    end
  end

end
