class ApplicationController < ActionController::Base

    private
    before_action :set_query

    def authenticate_user!
        if user_signed_in?
            root_path
        else
            render 'days/index', notice: "Please Login to view that page!"
        end
    end

    def set_query
        @q = Day.ransack(params[:q])
    end

end
