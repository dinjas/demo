puts "app/services/bar/baz.rb - top of file"
module Bar
  class Baz
    def to_s
      "#{object_id} Bar Bar::Baz"
    end
  end
end
puts "app/services/bar/baz.rb - bottom of file"
