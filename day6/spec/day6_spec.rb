require './day6.rb'

describe 'get_squares' do
  it 'return an array of numbers from the array that qualify as perfect squares' do
    expect(get_squares(1..16)).to eq([1, 4, 9, 16])
  end
end

describe '.conjure' do
  it 'it should define a new instance method in the Conjurer class with the method name equal to the name parameter, and with the method body equal to the lambda.' do
  end
end
