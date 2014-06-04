# Prevent load-order problems in case openproject-plugins is listed after a plugin in the Gemfile
# or not at all
require 'open_project/plugins'
require 'omniauth/strategies/mock_auth'

module OpenProject::MockAuth
  class Engine < ::Rails::Engine
    engine_name :openproject_mock_auth

    include OpenProject::Plugins::ActsAsOpEngine
    extend OpenProject::Plugins::AuthPlugin

    register 'openproject-mock_auth',
             :author_url => 'http://finn.de',
             :requires_openproject => '>= 3.1.0pre1'

    register_auth_providers do
      strategy :mock_auth do
        [{name: 'mock_auth'}]
      end
    end
  end
end
