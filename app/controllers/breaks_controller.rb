class BreaksController < ApplicationController
  before_action :set_break, only: [:create]
  def new
    #@work = Work.find(params[:work_id])
    #@break = Break.new(break_params)
   # @break_start_time = Time.zone.now.to_i
  end
  def create
    @work = Work.find(params[:work_id])
    @break = Break.new(break_params)
    if @break.save
      redirect_to controller: :breaks, action: :edit, id: @break.id,work_id:@work.id
    else 
      redirect_to controller: :works, action: :new
    end
  end
  def edit
    @work = Work.find(params[:work_id])
    @break = Break.find(params[:id])
  end

  def update

    @work = Work.find(params[:work_id])
    @break = Break.find(params[:id])
    if @break.update(break_params )
      @work = Work.find(params[:work_id])
      redirect_to controller: :works, action: :edit ,id:params[:work_id]
      #render "works/edit" ,{id: params[:work_id]}
    end
  end

def set_break
  @break = Break.new
end
  private

  def break_params
    params.permit(:created_at,:updated_at,:breakcount).merge(work_id: params[:work_id].to_i)
  end
end
