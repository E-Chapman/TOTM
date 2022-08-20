class PeriodsController < ApplicationController
  before_action :authenticate_user!
  def create
    @period = Period.new
    @period.user = current_user
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
end
