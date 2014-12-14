class ScoresController < ApplicationController
 before_filter :authenticate_user!
   def index
    # @scores = Scores.order(:project_id)
    @scores = Score.joins(' s  inner join users u on s.judge_id=u.id inner join projects p on s.project_id=p.id inner join questions q on s.question_id=q.id;').select('s.round_number,p.name as project_name,u.name as user_name,q.question as question_name,s.score, s.comment as question_comment' )
    respond_to do |format|
      format.html
      format.csv { send_data Score.to_csv(@scores) }
      format.xls 
    end
  end
end