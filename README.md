# OpenProject MockAuth Plugin

Adds support for OmniAuth MockAuth strategy for OpenProject.

## Usage

Add this plugin by adding it to `Gemfile.plugins`, e.g.:

```ruby
gem 'openproject-auth_plugins', :git => 'https://github.com/opf/openproject-auth_plugins.git', :branch => 'release/4.0'
gem 'openproject-mock_auth',    :git => 'git@github.com:machisuji/openproject-mock_auth.git'
```

If the plugin has been enabled you will have a new link that reads 'Mock Auth' on the OpenProject login page and in the drop down menu.
