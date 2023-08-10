class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    @products = Product.all
    @user = User.find(params[:user_id])
  end

  def search
    @user = User.find(params[:user_id])
    search_term = params[:search].strip
    decoded_search_term = CGI.unescape(search_term) # Decode the search term
    SearchQuery.create(term: decoded_search_term, user_id: @user.id) if decoded_search_term.include?('?')
    decoded_search_term_whitout_symbols = decoded_search_term.gsub(/[[:punct:]]/, '')

    @products = if decoded_search_term.present?
                  Product.where('name LIKE ?', "%#{decoded_search_term_whitout_symbols}%")
                else
                  Product.all
                end

    if request.xhr?
      render partial: 'products_list', locals: { products: @products }
    else
      render 'index'
    end
  end
end
