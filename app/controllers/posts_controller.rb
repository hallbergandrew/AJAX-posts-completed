class PostsController < ApplicationController
  def index
    @posts = Post.all
    sleep 1
    @incomplete_posts = Post.where(complete: false)
    @complete_posts = Post.where(complete: true)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    respond_to do |format|
      format.html { redirect_to posts_url }
      format.js
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes!(post_params)
    respond_to do |format|
      format.html { redirect_to posts_url}
      format.js
    end
  end

  def destroy
    @post = Post.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to posts_url }
      format.js
    end
  end

private
  def post_params
    params.require(:post).permit(:title, :content, :complete)
  end
end
