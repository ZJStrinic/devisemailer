class Calculator 
  
  attr_accessor :list_of_numbers
  
  def initialize(list_of_numbers)
    @list_of_numbers = list_of_numbers
  end
  
  def sum
    list_of_numbers.sum
  end
  
  def max
    list_of_numbers.max
  end
  
  def min
    list_of_numbers.min
  end
  
  def odd
    if list_of_numbers.sum.odd? === true
      puts true
    else
      puts false
    end
  end
  
  def self.hello
    puts "Hello, I am your Calculator :) "
  end
end