class IndexController < ApplicationController
  def index
    @players_task=PlayersTask.new
  end
  def progress
    total_points=0
    completed_points=0
    Task.all.each do |t|
      total_points=total_points+t.points
      completed_points=completed_points+t.points if t.completed
    end
    logger.debug completed_points
    logger.debug total_points
    render :text=>(completed_points.to_f/total_points.to_f)*100, :status=>:ok
  end
end
