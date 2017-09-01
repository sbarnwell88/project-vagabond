class PostsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource only: [:edit, :update, :destroy]

  def index
    @post = Post.all
  end

  def new
    @city = City.friendly.find params[:city_id]
    @post = Post.new
  end
  
  def create
    @city = City.friendly.find params[:city_id]
    @post = @city.posts.new(post_params)
    if @post.valid?
      @post.save
      redirect_to city_post_path(@city, @post)
    else 
      flash.alert = "Your post must have a title between 1-200 characters & you must include a tip."
      redirect_to new_city_post_path
    end

  end

  def show
    @post = Post.find params[:id]
  end

  def edit
    @city = City.friendly.find params[:city_id]
    @post = Post.find params[:id]
  end

  def update
    @city = City.friendly.find params[:city_id] 
    @post = @city.posts.find params[:id]
    @post.update(post_params)
    
    redirect_to city_post_path(@city)
  end

  def destroy
    @city = City.friendly.find params[:city_id]
    @post = @city.posts.find params[:id]
    @post.destroy

    redirect_to city_path(@city)
  end

  rescue_from CanCan::AccessDenied do |exception|
    @city = City.friendly.find params[:city_id]
    flash[:notice] = "Access denied! This isn't your post."
    flash.keep(:notice)

    redirect_to city_post_path(@city)

  end

  private
  def post_params
      post = params.require(:post).permit(:title, :tip, :post_id, :user_id)
      user_id = {user_id: current_user.id}
      post.merge(user_id)
  end

end
