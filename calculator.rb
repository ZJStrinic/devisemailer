
data = [
  4,
  "6",
  { result: "Deset"}
]


puts "#{data[0]} + #{data[1]} = #{data[2][:result]} "




class Calculator 
  
  attr_accessor :number
  
  def initialize(number)
    @number = [number]
  end
  
  def sum
    sum = 0
    number.each do |shallow_array|
      shallow_array.each do |deep_numbers|
        sum += deep_numbers
      end
    end
    puts sum
  end
  
  def max
    number.each do |shallow_array|
      puts shallow_array.max
    end
  end
  
  def min
    number.each do |shallow_array|
      puts shallow_array.min
    end
  end
  
  def odd
    sum = 0
    number.each do |shallow_array|
      shallow_array.each do |deep_numbers|
        sum += deep_numbers
      end
    end
    if sum.odd? === true
      puts true
    else
      puts false
    end
  end
  
  def self.hello
    puts "Hello, I am your Calculator :) "
  end
end







calculator= Calculator.new([2,4,5,1])
calculator.sum
calculator.max
calculator.min
calculator.odd
Calculator.hello

