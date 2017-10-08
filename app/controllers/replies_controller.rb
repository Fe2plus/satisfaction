class RepliesController < ApplicationController
  def show
    @reply = Reply.find(params[:id])
  end

  def new
    @reply  = Reply.new
  end

  def create
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
