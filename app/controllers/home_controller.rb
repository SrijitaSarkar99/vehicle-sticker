class HomeController < ApplicationController
  Options = Hash["1"=>"Student","2"=>"Faculty","3"=>"Non-Teaching Staff","4"=>"Other"]
    
  def index
    
  end
  
  def about
  end

  def redirect
    puts params
    if params[:category]=="1"
      redirect_to "/students/new"
    elsif params[:category]=="2"
      redirect_to "/teachers/new"
    elsif params[:category]=="3"
      redirect_to "/non_teches/new"
    elsif params[:category]=="4"
      redirect_to "/"
    end
  
  end

end
