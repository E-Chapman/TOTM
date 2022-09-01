class PeriodsController < ApplicationController
  def new
    @period = Period.new
  end

  def index
    @period = Period.all
  end

  def show
  end

  def create
    @period = Period.new
    @period.user_id = current_user.id
    @period.start_date = Date.today
    @period.save!
  end

  def update
    get_period
    @period.update
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
