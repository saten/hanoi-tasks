class TaskGroup < ActiveRecord::Base
  has_many :tasks
  has_many :players, :through => :tasks
end
