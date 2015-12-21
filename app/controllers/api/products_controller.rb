class Api::ProductsController < ApplicationController

  def index
    @products = Product.get(params[:page], params[:order], params[:direction])
    @pagination = { total_count: @products.total_count,current_page: @products.current_page, per_page: Product::PRODUCTS_PER_PAGE }
    render 'api/products/index'
  end

  def search
    @products = Product.search(params[:name])
    render 'api/products/index'
  end

  def show
    @product = Product.find(params[:id])
    if @product
      render 'api/products/show'
    else
      error_404
    end
  end

  def error_404
    render nothing: true, status: 404
  end

end