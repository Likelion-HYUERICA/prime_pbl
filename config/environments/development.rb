Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.seconds.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
  
  #   config.action_mailer.delivery_method = :smtp
  # config.action_mailer.smtp_settings = {
  #   :authentication => :plain,
  #   :address => 'smtp.mailgun.org', # SMTP Hostname
  #   :port => 587,
  #   :domain => 'sandboxdc8007399ce2485b94e94120d5922c18.mailgun.org', # Maingul Sandbox Domain
  #   :user_name => 'postmaster@sandboxdc8007399ce2485b94e94156d5922c65.mailgun.org', # Default SMTP Login
  #   :password => '6dc84450fd6510d5b28427a9369afde0' # Default Password
  # }
  # 메일러 설정 (바꾸지 마세요!)
  # FIXME: 메일 호스트 네임 바꾸기.
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.perform_deliveries = true
  config.action_mailer.smtp_settings = { 
    :authentication => :plain,
    :address => "smtp.mailgun.org",
    :port => 2525,
    :domain => "sandboxee95f37da1cb4fdf8b0d5034c724ed32.mailgun.org",
    :user_name => "postmaster@sandboxee95f37da1cb4fdf8b0d5034c724ed32.mailgun.org",
    :password => "04c669de921b3710ad617a5fe93f458c",
    :enable_starttls_auto => true  
  }
  config.action_mailer.default_url_options = {host:'https://rails5-fmoth.c9users.io'}
  
end
