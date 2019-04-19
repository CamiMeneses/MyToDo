class ListsController < ApplicationController
  before_action :my_user, only: %i[index show create edit update]
  def index    
    @lists=@user.lists.all
  end

  def show
    @list=@user.lists.find(params[:id])
  end

  def new
    @list=List.new
  end

  def create
    @user.lists.create(list_params)
    redirect_to user_lists_path(@user)
  end

  def edit
    @list=@user.lists.find(params[:id])
  end

  def update
    @list=List.find(params[:id])
    @list.update(list_params)
    redirect_to user_lists_path(current_user)
  end

  def destroy
    @lists=List.find(params[:id])
    @lists.destroy
    redirect_to user_lists_path(current_user) 
  end

  private
  def my_user
    @user=current_user
  end
  def list_params
    params.require(:list).permit(:name, :description)
  end
end
