class StoreController < ApplicationController
  def index
    @products = Product.order(:name)
  end # Automatically load: app/views/store/index.html.erb

  def show
    @product = Product.find(params[:id])
  end # Automatically load: app/views/store/show.html.erb
end
