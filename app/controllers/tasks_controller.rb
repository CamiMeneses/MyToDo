class TasksController < ApplicationController
  before_action :my_list, only: %i[index show new create edit update]
  def index    
    @tasks=@list.tasks.all
  end

  def show
    @task=@list.tasks.find(params[:id])
  end

  def new
    @task=Task.new
  end

  def create
    @list.tasks.create(list_params)
    redirect_to user_list_tasks_path(@list)
  end

  def edit
    @task=@list.tasks.find(params[:id])
  end

  def update
    @task=Task.find(params[:id])
    @task.update(list_params)
    redirect_to user_list_tasks_path(current_user)
  end

  def destroy
    @tasks=Task.find(params[:id])
    @tasks.destroy
    redirect_to user_list_tasks_path(current_user) 
  end
  
  private
  def my_list
    @user=current_user
    @list=@user.lists.find(params[:list_id])
  end
  def list_params
    params.require(:task).permit(:name, :description, :status)
  end
end
