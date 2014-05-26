# OpenProject MockAuth Plugin

Adds support for OmniAuth MockAuth strategy for OpenProject.

## Usage

Add this plugin by adding it to `Gemfile.plugins`, e.g.:

    gem 'openproject-mock_auth', :git => 'git@github.com:machisuji/openproject-mock_auth.git'

If the plugin has been enabled you will have a new link that reads 'Mock Auth' on the OpenProject login page and in the drop down menu.

*Note*

The way authentication plugins render their login links is subject to change.
