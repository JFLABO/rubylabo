module Foo
  Bar = "bar"
end
 
class Baz
  include Foo
end
 
puts Baz::Bar
