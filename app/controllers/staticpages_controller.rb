class StaticpagesController < ApplicationController
  
	def home
	end

  def information
  end

  def how_it_works
  end

  def news
  end

	def contact_us
  	@name = params[:name]
  	@phone = params[:phone]
  	@email = params[:email]
  	@message = params[:message]
    if @message != nil && @email != nil && @name != nil && @phone != nil
  	  ContactUsMailer.contact_us_mail(@name, @phone, @email, @message).deliver_now 
        flash[:notice] =  "Ваш вопрос отправлен администратору. Ожидайте ответа на ваш email!"
    end
  end
end
