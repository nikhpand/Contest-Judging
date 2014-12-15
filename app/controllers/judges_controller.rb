class JudgesController < ApplicationController
     before_filter :authenticate_user!
  def index
       @users = User.all
       @projects = Project.all
  end
  def show
    @jp = User.joins(' u left outer join projects_users pj on pj.user_id=u.id').select('u.name as user_name, u.email, count(pj.project_id) as total_proj' ).where('u.id <> 1').group('pj.user_id,u.name')
    @pj = Project.joins(' p left outer join projects_users pj on pj.project_id=p.id').select('p.name as proj_name, count(pj.user_id) as total_judge' ).group('pj.project_id')
  end
end