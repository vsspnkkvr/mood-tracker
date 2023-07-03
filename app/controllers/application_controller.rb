class ApplicationController < ActionController::Base
    before_action :set_query

    def set_query
        @query = Day.ransack(params[:q])
        @days = @query.result(distinct: true)
    end

end
