class WorksController < ApplicationController
  def index
  end

  def new
    @start_time = Time.now
  end

end
