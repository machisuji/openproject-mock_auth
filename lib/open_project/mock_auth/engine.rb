# Prevent load-order problems in case openproject-plugins is listed after a plugin in the Gemfile
# or not at all
require 'open_project/plugins'
require 'omniauth/strategies/mock_auth'

module OpenProject::MockAuth
  class Engine < ::Rails::Engine
    engine_name :openproject_mock_auth

    include OpenProject::Plugins::ActsAsOpEngine

    register 'openproject-mock_auth',
             :author_url => 'http://finn.de',
             :requires_openproject => '>= 3.1.0pre1',
             :settings => { 'default' => { 'providers' => {} } }

    initializer "mock_auth.middleware" do |app|
      app.config.middleware.use OmniAuth::Builder do
        provider :mock_auth, :name => 'mock_auth'
      end
    end

    initializer 'mock_auth.register_hooks' do
      require 'open_project/mock_auth/hooks'
    end
  end
end
