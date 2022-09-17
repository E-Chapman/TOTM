class NotesController < ApplicationController
  before_action :set_notes, only: [:destroy]

  def new
    @note = Note.new
    # get_period
  end
  def create
    # get_period
    @note = Note.new(note_params)
    @note.period = @period
    if @note.save
      redirect_to root_path, notice: "Note added"
    else
      render :new
    end
  end

  def destroy
    @note.destroy
    redirect_to root_path
  end

  private

  def set_notes
    @note = Note.find(params[:id])
  end

  # def get_period
  #   @period = Period.find(params[:id])
  # end

  def note_params
    params.require(:note).permit(:content)
  end
end
