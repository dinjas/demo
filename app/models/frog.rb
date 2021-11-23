puts 'app/models/frog.rb - top of file'

class Frog < ApplicationRecord
  class << self
    attr_accessor :status
  end

  def to_s
    "#{name} - #{description}!"
  end
end
puts 'app/models/frog.rb - bottom of file'
