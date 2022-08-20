class PeriodDaySymptomsController < ApplicationController
    before_action :set_period_day_symptom, only: [:show, :edit, :update, :destroy]
    
def new
    @symptom = Symptom.new
end

    #   def index
    #     @symptoms = Symptom.all
    #   end

def show
end

def create
    @symptom = PeriodDaySymptom.new(symptom_params)
    @symptom.user = current_user
    if @symptom.save!
    redirect_to root_path
    else
        render :new
    end
end

def edit
end

def update
    @symptom.update(symptom_params)
    flash[notice:] = "Updating...."
    redirect_to root_path
end

def destroy
    @symptom.destroy
    redirect_to root_path
end

private

def set_period_day_symptom
  @symptom = PeriodDaySymptom.find(params[:id])
end

# def period_day_symptom_params
#   params.require(:period_day_symptom).permit()
# end
end