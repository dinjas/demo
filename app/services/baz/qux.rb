puts "app/services/baz/qux.rb - top of file"
class Baz::Qux
  def to_s
    "#{object_id} Baz::Qux"
  end
end
puts "app/services/baz/qux.rb - bottom of file"
