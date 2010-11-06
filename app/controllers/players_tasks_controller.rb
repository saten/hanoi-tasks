class PlayersTasksController < ApplicationController
  # GET /players_tasks
  # GET /players_tasks.xml
  def index
    @players_tasks = PlayersTask.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @players_tasks }
    end
  end

  # GET /players_tasks/1
  # GET /players_tasks/1.xml
  def show
    @players_task = PlayersTask.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @players_task }
    end
  end

  # GET /players_tasks/new
  # GET /players_tasks/new.xml
  def new
    @players_task = PlayersTask.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @players_task }
    end
  end

  # GET /players_tasks/1/edit
  def edit
    @players_task = PlayersTask.find(params[:id])
  end

  # POST /players_tasks
  # POST /players_tasks.xml
  def create
    @players_task = PlayersTask.new(params[:players_task])

    respond_to do |format|
      if @players_task.save
        @players_task.player.players_tasks.each do |pt |
          pt.delete if  pt.id != @players_task.id
        end
        if @players_task.player.tasks.empty?
          @players_task.player.available=true
          @players_task.player.save
        end
        format.html { redirect_to(@players_task, :notice => 'Players task was successfully created.') }
        format.xml  { render :xml => @players_task, :status => :created, :location => @players_task }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @players_task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /players_tasks/1
  # PUT /players_tasks/1.xml
  def update
    @players_task = PlayersTask.find(params[:id])

    respond_to do |format|
      if @players_task.update_attributes(params[:players_task])
        format.html { redirect_to(@players_task, :notice => 'Players task was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @players_task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /players_tasks/1
  # DELETE /players_tasks/1.xml
  def destroy
    @players_task = PlayersTask.find(params[:id])
    @players_task.destroy

    respond_to do |format|
      format.html { redirect_to(players_tasks_url) }
      format.xml  { head :ok }
    end
  end
end
