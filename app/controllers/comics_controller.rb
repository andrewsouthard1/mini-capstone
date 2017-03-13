class ComicsController < ApplicationController
  def index
    @home_page_comics = []
    comic_db = Product.all
    comic_num = 1
    while comic_num < 7
      @home_page_comics << comic_db.find_by(id: comic_num)
      comic_num += 1
    end
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

  def edit
    @comic = Product.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @comic = Product.find_by(id: params[:id])
    @comic.update(
      name: params["comic_name"],
      price: params["comic_price"],
      image: params["comic_image"],
      description: params["comic_description"]
    )
    render 'update.html.erb'
  end

  def destroy
    @comic = Product.find(params[:id])
    @comic.destroy
    render 'destroy.html.erb'
  end
end
