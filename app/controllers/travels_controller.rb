class TravelsController < ApplicationController
  before_action :authenticate_user!

  def new
    @travel = current_user.created_travels.build
  end

  def create
    @travel = current_user.created_travels.build(travel_params)
    if @travel.save
      redirect_to @travel, notice: '作成しました'
    else
      render :new
    end
  end

  private

  def travel_params
    params.require(:travel).permit(
      :title, :image_url, :description, :start_time, :end_time
    )
  end
end
