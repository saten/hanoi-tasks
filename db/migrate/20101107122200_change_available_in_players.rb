class ChangeAvailableInPlayers < ActiveRecord::Migration
  def self.up
    change_column :players, :available, :boolean, :default=>true 
  end

  def self.down
    change_column :players, :available, :boolean, :default=>false
  end
end
