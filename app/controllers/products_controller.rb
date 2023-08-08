class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def search
    @products = Product.where("name LIKE ?", "%#{params[:search]}%")

    if request.xhr?
      render partial: "products_list", locals: { products: @products }
    else
      SearchQuery.create(term: params[:search]) if params[:search].present?
      render "index"
    end
  end
end
