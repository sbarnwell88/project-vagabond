class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def new
    @city = City.find params[:city_id]
    @post = Post.new
  end
  
  def create
    @city = City.find params[:city_id]
    @post = @city.posts.create!(post_params)
    redirect_to city_path(@city)
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :tip)
  end

end
