class PostsController < ApplicationController

  def index
    @apartment = Apartment.find(params[:apartment_id])
    @posts = Post.all
  end

  def show
    @user = User.find(params[:user_id])
    @apartment = Apartment.find(params[:apartment_id])
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @user = User.find(params[:user_id])
    @apartment = Apartment.find(params[:apartment_id])
    @post = Post.find(params[:id])
  end

  def create
    set_user
    set_apartment
    @post = Post.create(post_params)
      if @post.save
        flash[:notice] = "Successfully created post"
        redirect_to apartment_posts_path
      else
        flash[:error] = @post.errors.full_messages.join(" ")
        flash[:notice] = "Error on posting"
        redirect_to new_apartment_post_path
      end
  end

  def update
    @user = User.find(params[:user_id])
    @apartment = Apartment.find(params[:apartment_id])
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
    flash[:notice] = "Post successfully updated!"
    redirect_to apartment_posts_url
  end

  def destroy
    @user = User.find(params[:user_id])
    @apartment = Apartment.find(params[:apartment_id])
    @post = Post.find(params[:id])
    if @user == current_user
      @post.destroy
      redirect_to apartment_posts_url
      flash[:notice] = "Deleted!"
    else
      redirect_to apartment_posts_url
      flash[:notice] = "Sorry, you can only delete your own posts!"
    end
  end

  private

    def post_params
      params.require(:post).permit(:contact, :p_ref_fee, :ratio_you, :ratio_me, :exp_date)
    end

    def post_params_update
      params.permit(:contact, :p_ref_fee, :ratio_you, :ratio_me, :exp_date)
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    def set_apartment
      @apartment = Apartment.find(params[:apartment_id])
    end

    def set_post
      @post = Post.find(params[:id])
    end
end
