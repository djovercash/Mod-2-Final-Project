class User < ApplicationRecord
  has_secure_password
  has_many :tasks, :foreign_key => 'snake_id'
  has_many :jobs, :through => :tasks
  has_many :cats, :foreign_key => 'cheetah_id', :class_name => "Job"

  # validation methods --------------------
  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
  validate :check_name_and_password

  def check_name_and_password
    errors.add(:password, "can't be the same as name or username") if name == password || username == password
  end


  # Instance methods -----------------------------
  def cheetah_status
    hold = self.cats.select { |cat| cat.task.rating }
    hold = hold.map { |cat| cat.task.rating }
    hold = hold.inject(0.0) { |sum, el| sum + el } / hold.size
    hold.round(1)
    if hold.nan?
      ["Complete tasks to earn Cheetah Points", 0.0]
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

  def self.top_user
    top_users = User.all.map {|user| [user.cheetah_status, user.username]}
    top_users.sort_by {|x| x[0][1]}.last
  end

  def self.top_cheetah_points
    top_users = User.all.map {|user| [user.username, user.cheetah_points]}
    top_users.sort_by { |x| x[1]}
  end


end
