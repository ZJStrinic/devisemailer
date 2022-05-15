require 'spec_helper.rb'
require './lib/classes/calculator.rb'

describe Calculator do 
  subject {Calculator.new([2,4,5,1])}
  
  it "sums four numbers in the array" do
    expect(subject.sum).to eq(12)
  end
  
  it "gets the biggest number of the array" do
    expect(subject.max).to eq(5)
  end

  it "gets the smallest number of the array " do
    expect(subject.min).to eq(1)
  end
  
  it "gets sum and checks if number is odd" do
    expect(subject.odd).to eq(false)
  end
  it "returns self method" do
   expect(Calculator.hello).to eq("Hello, I am your Calculator :)")  
  end
end