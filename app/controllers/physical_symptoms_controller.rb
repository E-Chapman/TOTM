class PhysicalSymptomsController < ApplicationController
  before_action :set_physical_symptom, only: [:edit, :update, :destroy]
  def new
    @physical_symptom = PhysicalSymptom.new
  end
  def index
    @physical_symptoms = PhysicalSymptom.all
  end
  def create
    @physical_symptom = PhysicalSymptom.new(physical_symptom_params)
    @physical_symptom.user = current_user
    if @physical_symptom.save!
    redirect_to root_path
    else
        render :new
    end
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
  def set_physical_symptom
    @physical_symptom = PhysicalSymptom.find(params[:id])
  end

  def physical_symptom_params
    params.require(:physical_symptom).permit(:name, :emoji)
  end
end
