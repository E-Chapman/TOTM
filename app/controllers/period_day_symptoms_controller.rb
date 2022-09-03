class PeriodDaySymptomsController < ApplicationController
before_action :set_period_day_symptom, only: [:show, :edit, :destroy]

  def new
    @period_day_symptom = PeriodDaySymptom.new
  end

  def index
    @period_day_symptom = PeriodDaySymptom.all
  end

  def create
    @period_day_symptom = PeriodDaySymptom.new(period_day_symptom_params)
    @period_day_symptom.user = current_user
    @period_day_symptom.save
    redirect_to period_period_day_symptoms_path(@period_day_symptom)
  end

  def show
  end

  def edit
  end

  def update
    @period_day_symptom.update(period_day_symptom_params)
    flash[notice:] = "Updating...."
    redirect_to root_path
  end

  def destroy
    @period_day_symptom.destroy
    redirect_to root_path
  end

  private

  def set_period_day_symptom
    @period_day_symptom = PeriodDaySymptom.find(params[:id])
  end

  def period_day_symptom_params
    params.require(:period_day_symptom).permit(:period_id, :mood_id, :physical_symptom_id, :flow_id)
  end
end
