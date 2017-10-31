class RepliesController < ApplicationController
  def show
    @reply = Reply.find(params[:id])
  end

  def new
    @reply  = Reply.new
  end

  def create
    @user = current_user
    @post = Post.find_by(id: post_id)#追加?????? ここがおかしいのは分かる。
    @reply = @user.replies.build(reply_params) #追加
    @reply = @post.replies.build(reply_params) #追加
    @reply.name  = @user.profile.name #追加
    @reply = Reply.new(reply_params)
    if @reply.save
      redirect_to :root
      flash[:success] = "Thank you!!"
    else
      render 'new'
    end
  end

  private
  def reply_params
    params.require(:reply).permit(:user_id,:name, :title, :body)
  end
end
