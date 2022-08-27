class FlowsController < ApplicationController
  def new
    @flow = Flow.new
  end

  def index
   @flows = Flow.all
  end
end