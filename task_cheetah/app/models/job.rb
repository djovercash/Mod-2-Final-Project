class Job < ApplicationRecord
  belongs_to :cheetah, :class_name => "User", :foreign_key => "cheetah_id"
  belongs_to :task


  def self.cheetah_claim(task)
    Job.all.exists?(task_id: task)
  end

  def self.cheetah_name(task)
    Job.find_by(task_id: task).cheetah.username
  end

end
