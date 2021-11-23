puts 'config/initializers/foo.rb - top of file'

Rails.application.reloader.to_prepare do
  puts 'config/initializers/foo.rb - inside of to_prepare callback'
  puts "Frog status 1 #{Frog.status || 'nil'}"
  Frog.status = 'good'
  puts "Frog status 2 #{Frog.status || 'nil'}"
end

Frog.status = 'bad'
puts "Frog status 0 #{Frog.status || 'nil'}"

ActiveSupport.on_load :after_initialize do
  puts 'config/initializers/foo.rb - inside of after_initialize callback'
end

puts 'config/initializers/foo.rb - bottom of file'