class Contest < ActiveRecord::Base
    def contest_params
        params.require(:contest).permit(:name, :location, :date)
    end
end
