class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user || current_user.admin?
      redirect_to :back, :alert => "Access denied."
    end
  end
  
  def edit
#  @project = Project.all
    @user = User.find(params[:id])
#   @user = User.find(session[:user_id])
  end
  
  def update
  params[:user][:project_ids] ||= []
  @user = User.find(params[:id])
#  if @user.update_attribute(params.require(:user).permit(:project_ids))
   if  @user.update_attributes(params[:user].permit(:project_ids))
    flash[:notice] = 'updated success'
    redirect_to :action =>'index',:id =>@user
  else
    render :action=>'show'
  end
  end
end
