class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post  = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to :root
      flash[:success] = "Thank you!!"
    else
      render 'new'
    end
  end

  private
  def post_params
    params.require(:post).permit(:user_id,:name, :title, :body)
  end
end
