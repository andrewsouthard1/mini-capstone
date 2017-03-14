class ComicsController < ApplicationController
  def index
    @comics = Product.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @comic1 = Product.new(
      name: params["comic_name"],
      price: params["comic_price"],
      description: params["comic_description"],
      in_stock: params["in_stock"]
    )
    @comic1.save
    flash[:success] = "Created comic"
    redirect_to "/comics/#{@comic1.id}"
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
      description: params["comic_description"],
      in_stock: params["in_stock"]
    )
    flash[:success] = "Updated comic"
    redirect_to "/comics/#{@comic.id}"
  end

  def destroy
    @comic = Product.find(params[:id])
    @comic.destroy
    flash[:danger] = "Deleted comic."
    redirect_to "/comics"
  end
end
