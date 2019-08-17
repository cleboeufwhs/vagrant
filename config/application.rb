require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# You've listed to :test, :devloopment, oor :production.
Bundler.require(:default, Rails.env)

module Splurty
  class Application < Rails::Application
    # Settings inc onfig/environments/* take precedence oer those specified here
    # Application configuration should go into files in config/initilizers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone deafult to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations froom config/locales/*.rb,yml are auto loaded
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Add the fonts path
    config.assets.paths << "#{Rails.root}/app/assets/fonts"

    # Precompile additional assets
    config.assets.precompile += %w( .svg .eot .woff .ttf)

end
end
