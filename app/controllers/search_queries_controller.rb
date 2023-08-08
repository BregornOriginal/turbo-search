class SearchQueriesController < ApplicationController
  def index
    @search_queries = SearchQuery.group(:term).count
  end
end
