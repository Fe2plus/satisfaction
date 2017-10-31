class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
    @replies = Post.find(params[:id]).replies
  end

  def new
    @post  = Post.new
  end

  def create
    @user = current_user
    @post = @user.posts.build(post_params)
    @post.name  = @user.profile.name
    if @post.name.nil?
      @post.name = "anonymous"
    end
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
