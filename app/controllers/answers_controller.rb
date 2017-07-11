class AnswersController < ApplicationController
  def index
    @users = User.all
  end
end
