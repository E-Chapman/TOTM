class PhysicalSymptomsController < ApplicationController
  before_action :set_physical_symptom, only: [:show, :edit, :update, :destroy]
  def new
    @physical_symptom = PhysicalSymptom.new
  end
  def index
    @physical_symptoms = PhysicalSymptom.all
  end
  def create
    @physical_symptom = PhysicalSymptom.new(physical_symptom_params)
    @physical_symptom.user = current_user
    find_period_day_symptoms
    @physical_symptom.period_day_symptom = @period_day_symptom
    @physical_symptom.save!
    redirect_to root_path
  end

  def show
  end
  def edit
  end

  def update
    @physical_symptom.update(physical_symptom_params)
    redirect_to root_path
  end

  def destroy
    @physical_symptom.destroy
    redirect_to root_path
  end

  private

  def find_period_day_symptoms
    @period_day_symptom = PeriodDaySymptom.find(params[:period_day_symptom_id])
  end
  def set_physical_symptom
    @physical_symptom = PhysicalSymptom.find(params[:id])
  end

  def physical_symptom_params
    params.permit(:name, :emoji)
  end
end
