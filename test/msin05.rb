require_relative "rabbit"
 
rabbit = Rabbit.new
puts rabbit.to_s
 
lop = LopEar.new
puts lop.to_s
 
lop.print_class_constants_and_variable
 
rabbit.print_description
lop.print_description
