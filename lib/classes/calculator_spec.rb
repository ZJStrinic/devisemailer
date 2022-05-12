require 'spec_helper'

class Calculator
  
  def add(list_of_numbers)
    list_of_numbers.sum
  end
  
  def max(list_of_numbers)
    list_of_numbers.max
  end
  
  def min(list_of_numbers)
    list_of_numbers.min
  end
  
  def odd(list_of_numbers)
    list_of_numbers.sum.odd?
  end
  
  def even(list_of_numbers)
    list_of_numbers.sum.even?
  end
  
  def self.hello
   "Hello, I am your Calculator :)"
  end
end

describe Calculator do 
  let(:calculator) {Calculator.new}
  
  
  it "adds four numbers in of the array" do
    expect(calculator.add([2,4,5,1])).to eq(12)
  end
  
  it "gets the biggest number of the array" do
    expect(calculator.max([2,4,5,1])).to eq(5)
  end
  
  it "gets the smallest number of the array " do
    expect(calculator.min([2,4,5,1])).to eq(1)
  end
  
  it "gets sum and checks if number is odd" do
    expect(calculator.odd([2,4,5,1])).to eq(false)
  end
  
  it "gets sum and checks if number is even" do
    expect(calculator.even([2,4,5,1])).to eq(true)
  end
  
  it "returns self method" do
   expect(Calculator.hello).to eq("Hello, I am your Calculator :)")  
  end
  
end