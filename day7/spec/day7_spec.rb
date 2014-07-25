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
  end
end
