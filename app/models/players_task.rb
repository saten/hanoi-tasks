class PlayersTask < ActiveRecord::Base
  belongs_to :player
  belongs_to :task

	after_save :update_availability

private 
def update_availability
	self.player.available=false
	self.player.save
end
end
