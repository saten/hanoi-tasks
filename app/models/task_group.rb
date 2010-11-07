class TaskGroup < ActiveRecord::Base
  validates_uniqueness_of :name
  has_many :tasks
  #has_many :players, :through => :tasks
end
