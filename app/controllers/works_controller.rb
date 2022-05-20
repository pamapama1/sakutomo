class WorksController < ApplicationController
  before_action :authenticate_user!, except: [:new]

  def new
    Groupdate.time_zone = "Tokyo"
    @array = Array.new()
    @work = Work.new
    if  user_signed_in?
    gon.work_time_along = Work.where(user_id: current_user.id).pluck(:work_time).last(4)
    gon.work_break_along = Work.where(user_id: current_user.id).pluck(:break_time).last(4)
    gon.work_evaluation = Work.where(user_id: current_user.id).pluck(:evaluation).last(4)
    end
  end
  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to controller: :works,action: :edit, id: @work.id
    end
 
    
   # @work_time = (Time.now-@start_time)
  end
  def break
    #binding.pry
  end
  def edit
    @work = Work.find(params[:id])
  end
  def evaluation
    @work = Work.find(params[:id])

  end

  def update
    @work = Work.find(params[:id])
    #if @work.update(work_params)

   if @work.update(work_params)
     redirect_to action: :work_end 
    else
      render 'works/evaluation'

   end
   def work_end
    #binding.pry
    @work = Work.find(params[:id])
    @start_time = @work.created_at.to_f
    @end_time = @work.updated_at.to_f


    @arrayend = Break.where(work_id: @work.id).pluck(:updated_at)
    @arraystart = Break.where(work_id: @work.id).pluck(:created_at)
    @array = [@arrayend,@arraystart].transpose.map{|ary| ary.inject(:-)}
    @array = @array.sum
    ti = @end_time - @start_time - @array

     if ti >= 3600
    t = Time.at(ti-9*60*60)
   @t = t.strftime("%H:%M:%S")
   @arrayone = Time.at(@array - 9*60*60)
   @arrayone = @arrayone.strftime("%M:%S")
     else
    t = Time.at(ti-9*60*60)
    @t = t.strftime("%M:%S")
    @arrayone = Time.at(@array - 9*60*60)
    @arrayone = @arrayone.strftime("%M:%S")
     end

     @work.update(work_time: ti.to_f,break_time: @array.to_f)
   end

  end



  private
  def work_params
    params.permit(:created_at,:updated_at,:work_time,:work_id,:evaluation).merge(user_id: current_user.id)
  end

end
