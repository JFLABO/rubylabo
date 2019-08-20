require_relative "rabbit"
 
rabbits = []
 
rabbits.push(Rabbit.new)
rabbits.push(Rabbit.new(name: "pyonkichi"))
rabbits.push(Rabbit.new(name: "inaba", color: :brown, length_of_ears: 7))
 
rabbits.each do |rabbit|
  puts rabbit.name
  puts rabbit.color
  puts rabbit.length_of_ears
  rabbit.say_name
  puts ""
end
 
rabbits[0].name = "wooser"
puts rabbits[0].name
