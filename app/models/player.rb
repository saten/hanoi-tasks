class Player < ActiveRecord::Base
  has_many :players_tasks
  has_many :tasks, :through=>:players_tasks
end
