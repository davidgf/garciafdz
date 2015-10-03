class ContactMailer < ActionMailer::Base
  default from: "david@garciafdz.com"

  def info_mail(message_params)
  	@message_params = message_params
  	mail(to: "david@garciafdz.com", subject: 'Contacto')
  end
end
