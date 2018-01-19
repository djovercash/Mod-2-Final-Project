class Job < ApplicationRecord
  belongs_to :cheetah, :class_name => "User", :foreign_key => "cheetah_id"
  belongs_to :task



end
