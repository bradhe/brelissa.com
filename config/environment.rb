# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Brelissa::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.gmail.com',
  :user_name => 'brad.heller@gmail.com',
  :password => '!!1234QWasZX',
  :authentication => :login,
  :enable_starttls_auto => true
}
