class PeriodsController < ApplicationController
  before_action :authenticate_user!

  def index
    @periods = Period.all
  end

  def show

  end

  def new
    @period = Period.new
  end

  def create
    @period = Period.new(period_params)
    @period.user = current_user
    @period.save
    redirect_to new_period_period_day_symptom_path(@period)
  end

  def edit
    get_period
  end

  def update
    get_period
    @period.update(period_params)
    @period.save
    redirect_to action: "index"
  end

  def destroy
    get_period
    @period.destroy
    redirect_to action: "index"
  end

  private

  def get_period
    @period = Period.find(params[:id])
  end

  def period_params
    params.require(:period).permit(:start_date, :end_date)
  end
end
