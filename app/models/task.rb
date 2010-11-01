class Task < ActiveRecord::Base
  belongs_to :task_group
  has_many :players
end
