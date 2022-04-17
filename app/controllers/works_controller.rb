class WorksController < ApplicationController
  def index
  end

  def new
    #@work = Work.new
    @work_time = Time.now
  end
  def create
  #  @work = Work.new(work_params)
    binding.pry
   # @work_time = (Time.now-@start_time)
  end

  private

  def work_params
 #   params.require(:work).permit(start_time)
  end

end
