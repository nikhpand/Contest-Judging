class ScoresController < ApplicationController
 before_filter :authenticate_user!
   def index
    # @scores = Scores.order(:project_id)
    @scores = Scores.joins(' s inner join users u on s.judge_id=u.id inner join projects p on s.project_id=p.id inner join questions q on s.questions_id=q.id;').select('s.round_number,p.name as project_name,u.name as user_name,q.question,s.score' )
    respond_to do |format|
      format.html
      format.csv { send_data @scores.to_csv }
      format.xls
    end
  end
end