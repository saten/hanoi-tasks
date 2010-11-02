class PlayersTask < ActiveRecord::Base
  belongs_to :player
  belongs_to :task
end
