class PeriodsController < ApplicationController
  def create
    @period = Period.new
    @period.user = current_user
  end

  def delete
    @period.destroy
    redirect_to root_path
  end
end
