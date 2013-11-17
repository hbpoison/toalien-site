
require 'turnip/capybara'

require File.expand_path '../../app.rb', __FILE__

Capybara.app = ToAlien::Site
