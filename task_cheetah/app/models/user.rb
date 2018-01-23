class User < ApplicationRecord
  has_secure_password
  has_many :tasks, :foreign_key => 'snake_id'
  has_many :jobs, :through => :tasks
  has_many :cats, :foreign_key => 'cheetah_id', :class_name => "Job"



end
