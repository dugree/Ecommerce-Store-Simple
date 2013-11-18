class StoreController < ApplicationController
  def index
    @products = Product.order(:name)
  end # Automatically load: app/views/store/index.html.erb

  def show
    @product = Product.find(params[:id])
  end # Automatically load: app/views/store/show.html.erb
  
  def search
  end # app/views/store/search.html.erb (Contains the search form.)
  
  def search_results
    # Using ActiveRecord to find the products that
    # match the user's keywords.
  end # app/views/store/search_results.html.erb (Display search results.)
end
