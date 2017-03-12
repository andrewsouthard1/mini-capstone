class ComicsController < ApplicationController
  def index
    @all_comics = Product.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    comic1 = Product.new(
        name: params["comic_name"],
        price: params["comic_price"],
        description: params["comic_description"]
        )
    comic1.save
    render 'create.html.erb'
  end

  def show
    comic_id = params[:id]
    p "*******"
    p comic_id
    @comic = Product.find_by(id: comic_id)
    render 'show.html.erb'
  end
end
