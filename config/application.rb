require File.expand_path('../boot', __FILE__)

require 'rails'
require 'action_controller/railtie'
require 'active_record/railtie'
require 'action_view/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module VideoTitles
  class Application < Rails::Application
  end
end
