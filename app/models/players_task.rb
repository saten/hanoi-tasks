class PlayersTask < ActiveRecord::Base
  belongs_to :player
  belongs_to :task

	after_save :update_availability
	after_destroy :free_players

private 
def update_availability
	self.player.available=false
	self.player.save
end
def free_players
	if self.player.players_tasks.empty?
		self.player.available=true
		self.player.save
	end
end
end
