class Work < ApplicationRecord

  def taimu
    @time = Time.now
    t = @time.to_f-@start_time.to_f
    t = Time.at(t-9*60*60)
   @t = t.strftime("%H:%M:%S")
  end
end
