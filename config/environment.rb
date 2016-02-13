# Load the Rails application.
require File.expand_path('../application', __FILE__)

Garciafdz::Application.configure do

  config.action_mailer.default_url_options = { :host => ENV['default_url'] }
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
                                        :address => ENV['smtp_host'],
                                        :port => ENV['smtp_port'],
                                        :user_name => ENV['smtp_username'],
                                        :password => ENV['smtp_password'],
										:authentication => "plain",
										:enable_starttls_auto => true
                                      }

end

# Initialize the Rails application.
Garciafdz::Application.initialize!
