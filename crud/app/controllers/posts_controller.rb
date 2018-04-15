class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.new
    @post.title = params[:input_title]
    @post.content = params[:input_content]
    @post.save
    redirect_to '/posts/new'
  end 

  def show
    @post = Post.find(params[:post_id])
  end
end
