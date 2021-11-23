puts "app/services/baz/bar.rb - top of file"
module Baz
  class Bar
    def to_s
      "#{object_id} Baz Baz::Bar"
    end
  end
  class Tim
  end
end
class Jason
end
puts "app/services/baz/bar.rb - bottom of file"
