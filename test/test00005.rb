class Rabbit
  attr_accessor :name
  attr_reader :color, :length_of_ears
 
  def initialize(name: "usachan", color: :white, length_of_ears: 10)
    @name = name
    @color = color
    @length_of_ears = length_of_ears
  end
 
  def jump
    puts "pyon! pyon!"
  end
 
  def pound_steamed_rice_into_rice_cake
    puts "pettan! pettan!"
  end
  
  def say_name
    puts "Hello, I'm #{@name}!"
  end
end
