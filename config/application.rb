require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module App
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 8.0

    config.generators do |g|
      g.test_framework :rspec
    end

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w[assets tasks])

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    config.time_zone = "Tokyo"
    config.active_record.default_timezone = :local
    config.eager_load_paths << Rails.root.join("extras")

    config.assets.paths << Rails.root.join("app", "assets", "builds")
    config.assets.precompile += %w[application.js application.css]

    config.credentials.config_files = [
      root.join("config/credentials.yml.enc"),
      root.join("config/credentials/#{Rails.env}.yml.enc")
    ]

    # Edit environment-specific credentials files using:
    # rails credentials:edit --environment development
  end
end
