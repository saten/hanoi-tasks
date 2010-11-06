class IndexController < ApplicationController
  def index
    @players_task=PlayersTask.new
  end
end
