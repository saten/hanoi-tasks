class TaskGroupsController < ApplicationController
  # GET /task_groups
  # GET /task_groups.xml
  def index
    @task_groups = TaskGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @task_groups }
    end
  end

  # GET /task_groups/1
  # GET /task_groups/1.xml
  def show
    @task_group = TaskGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @task_group }
    end
  end

  # GET /task_groups/new
  # GET /task_groups/new.xml
  def new
    @task_group = TaskGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @task_group }
    end
  end

  # GET /task_groups/1/edit
  def edit
    @task_group = TaskGroup.find(params[:id])
  end

  # POST /task_groups
  # POST /task_groups.xml
  def create
    @task_group = TaskGroup.new(params[:task_group])

    respond_to do |format|
      if @task_group.save
        format.html { redirect_to(@task_group, :notice => 'Task group was successfully created.') }
        format.xml  { render :xml => @task_group, :status => :created, :location => @task_group }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @task_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /task_groups/1
  # PUT /task_groups/1.xml
  def update
    @task_group = TaskGroup.find(params[:id])

    respond_to do |format|
      if @task_group.update_attributes(params[:task_group])
        format.html { redirect_to(@task_group, :notice => 'Task group was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @task_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /task_groups/1
  # DELETE /task_groups/1.xml
  def destroy
    @task_group = TaskGroup.find(params[:id])
    @task_group.destroy

    respond_to do |format|
      format.html { redirect_to(task_groups_url) }
      format.xml  { head :ok }
    end
  end
end
