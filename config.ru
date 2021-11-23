puts 'config.ru - top of file'

# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

run Rails.application
Rails.application.load_server

puts 'config.ru - bottom of file'