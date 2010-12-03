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
    render :text=>(completed_points.to_f/total_points.to_f)*100, :status=>:ok
  end
  def snort
    @snort_log=RestClient.get "http://10.13.109.202/base/base_qry_main.php?new=2&num_result_rows=-1&submit=Query+DB&current_view=-1&ip_addr_cnt=1&ip_addr[0][0]=+&ip_addr[0][1]=ip_src&ip_addr[0][2]=%3D&ip_addr[0][3]=#{self.request.env['REMOTE_ADDR']}&ip_addr[0][8]=+&ip_addr[0][9]=+"
    render :layout=>false
  end  

end
