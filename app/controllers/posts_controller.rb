class PostsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @apartment = Apartment.find(params[:list_id])
    target_posts = Post.where(apartment_id: params[:apartment_id])
    @movies = Array(target_posts)
  end

  def show
    @user = User.find(params[:user_id])
    @apartment = Apartment.find(params[:list_id])
    @post = Post.find(params[:list_id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params_create)

    respond_to do |format|
      if @post.save
        format.html { redirect_to apartment_posts_url, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end

  private

    def post_params_create
      params.permit(:title, :director, :synopsis, :year, :runtime, :rating, :list_id)
    end

  end

end
