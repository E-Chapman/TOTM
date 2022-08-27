class MoodsController < ApplicationController
  def new
    @mood = Mood.new
  end

  def index
    @moods = Mood.all
  end
end
