class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def search
    search_term = params[:search].strip
    decoded_search_term = CGI.unescape(search_term) # Decode the search term
    SearchQuery.create(term: decoded_search_term) if decoded_search_term.include?('?')
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
