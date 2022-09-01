class MoodsController < ApplicationController
  def new
    @mood = Mood.new
  end

  def index
    @moods = Mood.all
  end

  def create
    @mood = Mood.new(mood_params)
    @mood.user = current_user
    find_period_day_symptoms
    @mood.period_day_symptom = @period_day_symptom
    @mood.save!
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
    @mood.update(mood_params)
    redirect_to root_path
  end

  def destroy
    @mood.destroy
    redirect_to root_path
  end

  private

  def find_period_day_symptoms
    @period_day_symptom = PeriodDaySymptom.find(params[:period_day_symptom_id])
  end

  def set_mood
    @mood = Mood.find(params[:id])
  end

  def mood_params
    params.permit(:name, :emoji)
  end
end

