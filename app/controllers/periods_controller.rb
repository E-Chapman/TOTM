class PeriodsController < ApplicationController
  before_action :authenticate_user!
  before_action :get_period, only: [:show]

  def index
    @periods = Period.all
  end

  def show
    @period_day_symptom = PeriodDaySymptom.find_by(period_id: @period.id)
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
    redirect_to periods_path
  end

  def destroy
    get_period
    @period.destroy
    redirect_to periods_path
  end

  private

  def get_period
    @period = Period.find(params[:id])
  end

  def period_params
    params.require(:period).permit(:start_date, :end_date)
  end
end
