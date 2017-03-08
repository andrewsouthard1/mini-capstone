class ProductsController < ApplicationController
  def home_page
    @all_comics = Product.all
    render 'home.html.erb'
  end
end
