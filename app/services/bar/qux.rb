puts "app/services/bar/qux.rb - top of file"
class Bar::Qux

  def to_s
    "#{object_id} Bar::Qux"
  end
end
puts "app/services/bar/qux.rb - bottom of file"
