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
      if @movie.save
        format.html { redirect_to user_list_movies_url, notice: 'Movie was successfully created.' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end

    
  end


end
