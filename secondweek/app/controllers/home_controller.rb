class HomeController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:post_id])
  end

  def new
  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save
    
    redirect_to "/home/index"
  end
end
