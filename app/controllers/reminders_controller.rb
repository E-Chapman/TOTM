class RemindersController < ApplicationController
  before_action :authenticate_user!

  def index
    @reminders = Reminder.order('reminder_date ASC')
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
    redirect_to action: "index"
  end

  def update
    get_reminder
    @reminder.update(reminder_params)
    @reminder.save
  end

  def destroy
    get_reminder
    @reminder.destroy
    redirect_to action: "index"
  end

  private

  def get_reminder
    @reminder = Reminder.find(params[:id])
  end

  def reminder_params
    params.require(:reminder).permit(:reminder_date, :body)
  end

end
