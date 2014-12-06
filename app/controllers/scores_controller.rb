class ScoresController < ApplicationController
 before_filter :authenticate_user!
   def index
    @scores = Scores.order(:project_id)
    respond_to do |format|
      format.html
      format.csv { send_data @scores.to_csv }
      format.xls
    end
  end
end