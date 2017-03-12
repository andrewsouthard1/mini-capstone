class ComicsController < ApplicationController
  def index
    @all_comics = Product.all
    render 'index.html.erb'
  end

  def show
    comic_id = params[:id]
    p "*******"
    p comic_id
    @comic = Product.find_by(id: comic_id)
    render 'show.html.erb'
  end

  def create
    render 'create.html.erb'
  end
end
