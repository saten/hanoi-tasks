class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.string :pizza_name
      t.string :beverage_name
      t.integer :player_id

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
