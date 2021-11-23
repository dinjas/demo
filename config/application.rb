puts 'config/application.rb - top of file'

require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Demo
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1
    # ☝️ If >= 6.0, zeitwerk will be enabled by default

    # 👇 Uncomment below to use classic mode
    # config.autoloader = :classic

    # config.autoload_paths << "#{root}/extras"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end

puts 'config/application.rb - bottom of file'
