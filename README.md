# OpenProject MockAuth Plugin

Adds support for OmniAuth MockAuth strategy for OpenProject.

## Usage

Add this plugin by adding it to `Gemfile.plugins`, e.g.:

	gem "openproject-plugins", :git => "git@github.com:opf/openproject-plugins.git", :branch => "dev"
	gem "openproject-auth_plugins", :git => 'git@github.com:finnlabs/openproject-auth_plugins, :branch => 'dev'
    gem 'openproject-mock_auth', :git => 'git@github.com:machisuji/openproject-mock_auth.git'

Only add the first line if it isn't already present. If the plugin has been enabled you will have a new, somewhat ugly link that reads 'Mock Auth' on the OpenProject login page and in the drop down menu.

**Note**

The way authentication plugins render their login links is subject to change.
