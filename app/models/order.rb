class Order < ActiveRecord::Base
  belongs_to :player
  validates_presence_of :player_id
end
