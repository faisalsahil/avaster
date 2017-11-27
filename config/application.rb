require_relative 'boot'
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

require 'money'


#ActiveRecord::Import.require_adapter('mysql2')

module AVASTER
  class Application < Rails::Application
    config.autoload_paths << "#{config.root}/lib"
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    
    
    config.to_prepare do
      # Devise::SessionsController.layout "your_layout_name"
      Devise::RegistrationsController.layout "application"
      # Devise::ConfirmationsController.layout "your_layout_name"
      # Devise::UnlocksController.layout "your_layout_name"
      # Devise::PasswordsController.layout "your_layout_name"
    end
  
  end
end