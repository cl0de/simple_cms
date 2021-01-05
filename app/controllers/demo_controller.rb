class DemoController < ApplicationController
  

  def index
  end

  def hello
    @id = params[:id]
    @name = params[:name]
  end

  def about
    render('about_us')
  end

  def contact

    
    if ((params[:country] == 'us') || (params[:country] == 'ca'))
      @phone = '(800) 555-6789'
    elsif(params[:country] == 'uk')
      @phone = '+44 1 133 459 867'
    else 
      @phone = '100 000 000 0000'
    end
    render('contact_us')
  end
end
