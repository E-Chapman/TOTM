class PhysicalSymptomsController < ApplicationController
  def new
    @physical_symptom = PhysicalSymptom.new
  end
  def index
    @physical_symptoms = PhysicalSymptom.all
  end
end
