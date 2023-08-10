class SearchQueriesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @user = User.find(params[:user_id])
    @current_user = current_user
    @search_queries = current_user.search_queries.group(:term).count
  end
end
