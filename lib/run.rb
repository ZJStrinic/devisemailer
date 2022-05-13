require './lib/classes/calculator.rb'

data = [
  4,
  "6",
  { result: "Deset"}
]
puts "#{data[0]} + #{data[1]} = #{data[2][:result]} "

calculator= Calculator.new([2,4,5,1])
puts calculator.sum
puts calculator.max
puts calculator.min
puts calculator.odd
puts Calculator.hello