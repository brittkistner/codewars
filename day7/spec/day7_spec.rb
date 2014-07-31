require './day7.rb'
require 'pry-byebug'

describe 'square_sum' do
  it 'squares each number passed into it and then sums the results together' do
    expect(square_sum([1,2, 2])).to eq(9)
  end
end

describe 'title_case' do
  it 'converts a string into title case' do
    expect(title_case('a clash of KINGS', 'a an the of')).to eq('A Clash of Kings')
    expect(title_case('the quick brown fox')).to eq("The Quick Brown Fox")
  end
end

describe 'fizz_buzz_custom' do
  it 'returns an array of 100 elements with either a number (1-100), Fizz, Buzz, or FizzBuzz' do
    expect(fizz_buzz_custom()).to be_a(Array)
    expect(fizz_buzz_custom[44]).to eq("FizzBuzz")
    expect(fizz_buzz_custom("What's ", "up?", 3, 7)[80]).to eq("What's ")
  end
end
