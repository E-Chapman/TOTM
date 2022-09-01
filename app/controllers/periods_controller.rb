class PeriodsController < ApplicationController
  # before_action :authenticate_user!

  def index
    @periods = Period.all
  end

  def new
    @period = Period.new
  end

  def create
    @period = Period.new(period_params)
    @period.user = current_user
    @period.save
    redirect_to action: "index"
  end

  def update
    get_period
    @period.update(period_params)
  end

  def delete
    get_period
    @period.destroy
    # redirect_to root_path
  end

  private

  def get_period
    @period = Period.find(params[:id])
  end

  def period_params
    params.require(:period).permit(:start_date, :end_date)
  end
end
