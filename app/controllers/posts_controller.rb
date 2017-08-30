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
    @post = Post.find params[:id]
  end

  def edit
    @city = City.find params[:city_id]
    @post = Post.find params[:id]
  end

  def update
    @city = City.find params[:city_id] 
    @post = @city.posts.find params[:id]
    @post.update(post_params)
    
    redirect_to city_path(@city)
  end

  def destroy
    @city = City.find params[:city_id]
    @post = @city.posts.find params[:id]
    @post.destroy

    redirect_to city_path(@city)
  end

  private
  def post_params
    params.require(:post).permit(:title, :tip, :post_id)
  end

end
