class JudgesController < ApplicationController
     before_filter :authenticate_user!
  def index
       @users = User.all
       @projects = Project.all
  end
end
