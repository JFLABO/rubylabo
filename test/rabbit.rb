class Rabbit
  attr_accessor :name
  attr_reader :color, :length_of_ears
 
  @@count = 0
 
  DEFAULT_NAME = "usachan"
  DEFAULT_COLOR = :white
  DEFAULT_LENGTH_OF_EARS = 10
 
  DESCRIPTION = "ウサギは特徴的な耳を持つ可愛い動物です。"
 
  def initialize(name: DEFAULT_NAME, color: DEFAULT_COLOR, length_of_ears: DEFAULT_LENGTH_OF_EARS)
    @name = name
    @color = color
    @length_of_ears = length_of_ears
    @@count += 1
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
 
  def print_ears
    puts "∩_∩"
  end
 
  def print_description
    puts "#{DESCRIPTION}"
  end
 
  def to_s
    "名前: #{@name}, 毛の色: #{@color}, 耳の長さ: #{@length_of_ears}, 全体でのウサギの数: #{@@count}"
  end
end
 
class LopEar < Rabbit
  DESCRIPTION = "ロップイヤーはウサギであり、耳が垂れている品種の総称です。"
 
  def print_ears
    puts "∪￣∪"
  end
 
  def print_class_constants_and_variable
    puts "DEFAULT_NAME: #{DEFAULT_NAME}, DEFAULT_COLOR: #{DEFAULT_COLOR}, DEFAULT_LENGTH_OF_EARS: #{DEFAULT_LENGTH_OF_EARS}"
    puts "DESCRIPTION: #{DESCRIPTION}"
    puts "@@count: #{@@count}"
  end
end
