class ComicsController < ApplicationController
  def index
    if params[:sort] == "price_low_to_high"
      @comics = Product.all.order(:price)
    elsif params[:sort] == "price_high_to_low"
      @comics = Product.all.order(:price => :desc)
    elsif params["search-term"]
      @comics = Product.where("name LIKE ?", "%#{params['search-term']}%")
    elsif params[:sort] == "discount_items"
      @comics = Product.where("price < ?", 10)
    else
      @comics = Product.all
    end
    # @comic_id = Product.find_by(params[])
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
    if params[:sort] == "random_item"
      shuffled_products = Product.all.shuffle
      @comic = shuffled_products.first
    else
      @comic = Product.find_by(id: comic_id)
    end
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
