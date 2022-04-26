# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
  :password => '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', # This is the secret sendgrid API key which was issued during API key creation
  :domain => 'herokuapp.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}