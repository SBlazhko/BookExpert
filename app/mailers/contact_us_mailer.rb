class ContactUsMailer < ApplicationMailer
	default from: 'serghiyblazhko@gmail.com'
	
	def contact_us_mail(name, phone, email, message)
		@name = name
		@phone = phone
		@email = email
		@message = message
    @url  = 'http://localhost:3000/contact_us'
    mail(to: 'blaghco@ukr.net', subject: "Книжная експертиза. Вы получили новый вопрос от #{name}")
	end
end
