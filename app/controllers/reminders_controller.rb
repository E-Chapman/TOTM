class RemindersController < ApplicationController
  before_action :authenticate_user!

  def index
    @reminders = Reminder.all
  end

  def new
    @reminder = Reminder.new
  end

  def show
    get_reminder
  end

  def create
    @reminder = Reminder.new(reminder_params)
    @reminder.user_id = current_user.id
    @reminder.save
  end

  def update
    get_reminder
    @reminder.update(reminder_params)
    @reminder.save
  end

  def destroy
    get_reminder
    @reminder.destroy
  end

  private

  def get_reminder
    @period = Period.find(params[:id])
  end

  def reminder_params
    params.require(:reminder).permit(:reminder_date, :body)
  end

end
