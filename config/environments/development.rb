Improvcoaches::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  config.eager_load = false

  config.serve_static_files = true


  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  #Run dev mail urls off localhost
  config.action_mailer.default_url_options = { :host => "localhost:3000" }

  #Write mail to a file
  ActionMailer::Base.delivery_method = :file
  ActionMailer::Base.file_settings = { :location => Rails.root.join('tmp/mail') }


  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Expands the lines which load the assets
  config.assets.debug = true
  config.assets.compile = true
  config.assets.digest = true

  Rails.logger = Logger.new(STDOUT)
  config.log_level = :error

  #Paperclip
  config.paperclip_defaults = {
    :url => "/system/:class/:attachment/:id/:style/:basename.:extension",
    :path => ":rails_root/public/system/:class/:attachment/:id/:style/:basename.:extension"
  }

  #BetterErrors
  BetterErrors::Middleware.allow_ip! '127.0.0.1/0'
end
