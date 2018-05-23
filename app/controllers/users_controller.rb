class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @tourists = User.all
  end

  def show
    @tourist = User.find(params[:id])
  end

  def edit
  end
end
