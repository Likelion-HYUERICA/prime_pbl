class HomeController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def new
  @user = User.new #유저 생성 후 변수 저장
    
  if @record.save
    ModelMailer.new_record_notification(@record).deliver # 유저에게 메일을 보내주는 메소드
    redirect_to @record
  end
  end
  def school
  	
  end
end
