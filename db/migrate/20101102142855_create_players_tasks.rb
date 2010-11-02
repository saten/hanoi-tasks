class CreatePlayersTasks < ActiveRecord::Migration
  def self.up
    create_table :players_tasks do |t|
      t.integer :player_id
      t.integer :task_id

      t.timestamps
    end
  end

  def self.down
    drop_table :players_tasks
  end
end
