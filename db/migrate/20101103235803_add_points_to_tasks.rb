class AddPointsToTasks < ActiveRecord::Migration
  def self.up
    add_column :tasks, :points, :integer, :default=>0
  end

  def self.down
    remove_column :tasks, :points
  end
end
