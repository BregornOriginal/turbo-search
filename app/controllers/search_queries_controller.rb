class SearchQueriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @search_queries = SearchQuery.group(:term).count
  end
end
