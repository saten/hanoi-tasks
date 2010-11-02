class Task < ActiveRecord::Base
  belongs_to :task_group
  has_many :players_tasks
  has_many :players, :through=>:players_tasks
end
