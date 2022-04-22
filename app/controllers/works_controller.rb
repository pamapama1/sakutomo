class WorksController < ApplicationController
  def index
  end
  def now_work
  end
  def new

    @work = Work.new
    @time = Time.now
    @start_time = params[:start_time]
 #   def taimu
     #@start_time = params[:start_time]
    #end
  # binding.pry
  end
  def create
    #@work = Work.new(work_params)
   # @work_time = (Time.now-@start_time)
  end


  private

  def work_params
    params.require(:work).permit(:start_time)
  end

end
