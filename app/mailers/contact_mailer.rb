class ContactMailer < ActionMailer::Base
 default to: "zjstrinic@gmail.com"

 def contact_email(name, email, message)
 @name = name
 @email = email
 @message = message

 mail(from: email, subject: 'Contact Form Message')
 end
end
