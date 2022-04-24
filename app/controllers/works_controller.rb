class WorksController < ApplicationController
  def index
  end
  def now_work
  end
  def new

    @work = Work.new
   
 #   def taimu
     #@start_time = params[:start_time]
    #end
   #binding.pry
  end
  def create
    #binding.pry
    @work = Work.new(work_params)
    if @work.save
      redirect_to controller: :works,action: :edit, id: @work.id
    end
 
    @work = Work.new(work_params)
   # @work_time = (Time.now-@start_time)
  end
  def break
    #binding.pry
  end
  def edit
  end

  def update
    @work = Work.find(params[:id])
   if @work.update(end_time: params[:end_time])
     redirect_to root_path
   end
  end


  private

  def work_params
    params.permit(:start_time,:end_time)
  end

end
