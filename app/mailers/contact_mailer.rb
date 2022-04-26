class ContactMailer < ActionMailer::Base
 default to: "info@zvone.com"

 def contact_email(name, email, message)
 @name = name
 @email = email
 @message = message

 mail(from: email, subject: 'Zvone.com Contact Form Message')
 end
end
