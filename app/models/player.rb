class Player < ActiveRecord::Base
  validates_uniqueness_of :nickname

  has_many :players_tasks
  has_many :tasks, :through=>:players_tasks
  has_one :order

  after_save :clean_tasks
  private
  def clean_tasks
    if self.available
      self.players_tasks.each do |pt|
	pt.destroy
      end
    end
  end
end
