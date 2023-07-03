class SearchController < ApplicationController
  def index
    @query = Day.ransack(params[:q])
    @days = @query.result(distinct: true)
  end
end
