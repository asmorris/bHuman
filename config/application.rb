require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
env_path = File.expand_path(File.join(__dir__,'_env.rb'))
load env_path if File.exist?(env_path)

# load EY Memached yml config (if exists)
memcached_path = File.expand_path(File.join(__dir__, 'memcached.yml'))
if File.exist?(memcached_path)
  parsed = YAML.load(IO.read(memcached_path))
  ENV['MEMCACHE_SERVERS'] = parsed['defaults']['servers'].join(',')
end

module BHuman
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
