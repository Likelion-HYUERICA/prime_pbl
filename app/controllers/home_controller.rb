class HomeController < ApplicationController
  def index
  @record = User.new
    
  if @record.save
    ModelMailer.new_record_notification(@record).deliver
    redirect_to @record
  end
  end
end
