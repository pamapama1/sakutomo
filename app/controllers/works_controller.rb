class WorksController < ApplicationController

  def now_work
  end
  def new
 
    @array = Array.new()
    @work = Work.new
 #   def taimu
     #@start_time = params[:start_time]
    #end
   #binding.pry
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

  def update
    @work = Work.find(params[:id])
    #if @work.update(work_params)

   if @work.update(work_params)
     redirect_to action: :work_end 
    else
      render 'works/edit'

   end
   def work_end
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
   @array = Time.at(@array-9*60*60)
   @array = @array.strftime("%M:%S")
     else
    t = Time.at(ti-9*60*60)
    @t = t.strftime("%M:%S")
    @array = Time.at(@array-9*60*60)
    @array = @array.strftime("%M:%S")
     end

     @work.update(work_time: ti.to_f,break_time: @array)
   end
  end



  private
  def work_params
    params.permit(:created_at,:updated_at,:work_time,:work_id)#.merge(work_id: params[:work_id].to_i)
  end

end
