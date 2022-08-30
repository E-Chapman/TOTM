class PeriodDaySymptomsController < ApplicationController
    before_action :set_period_day_symptom, only: [:show]

  def new
      @period_day_symptom = PeriodDaySymptom.new
  end

        # def index
        #   @period_day_symptom = Symptom.all
        # end

  def show
  end

  # def edit
  # end

  # def update
  #     @symptom.update(symptom_params)
  #     flash[notice:] = "Updating...."
  #     redirect_to root_path
  # end

  def destroy
    @period_day_symptom.destroy
      redirect_to root_path
  end

  private

  def set_period_day_symptom
    @period_day_symptom = PeriodDaySymptom.find(params[:id])
  end

  # def period_day_symptom_params
  #   params.require(:period_day_symptom).permit()
  # end

end
