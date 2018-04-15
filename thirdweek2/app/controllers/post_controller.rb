class PostController < ApplicationController
  
  
  def create
    @post = Post.new
    @post.title = params[:input_title]
    @post.content = params[:input_content]
    @post.save
    
    redirect_to '/'
  end

  def destroy
    @post = Post.find(params[:post_id])
    @post.destroy
    
    redirect_to '/'
  end

  def edit
    @post = Post.find(params[:post_id])
  end

  def index
    @posts = Post.all
  end

  def new
  end

  def update
  end
end
