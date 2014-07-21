require './day4.rb'
require 'pry-byebug'
require 'time'

describe 'remove_odd_hashes' do
  it 'removes hashes where the keys sum to an odd number' do
    expect(remove_odd_hashes([ {'a'=>5, 'b'=>5}, {'a'=>3, 'b'=>4}, {'a'=>2, 'b'=>0}, {'a'=>2, 'b'=>1}],'a','b')).to eq([{'a'=>5, 'b'=>5}, {'a'=>2, 'b'=>0}])
  end
end

describe 'elapsed_seconds' do
  xit 'it returns the number of seconds that have elapsed between the start and end times' do
  end
end

describe 'cap_me' do
  it 'returns an array of capitalized strings' do
    expect(cap_me(['hello', 'HELLO'])).to eq(['Hello', 'Hello'])
  end
end

describe 'no_odds' do
  it 'removes odd numbers from an array and returns the array' do
    expect(no_odds([0,1,2,3,4,5])).to eq([0,2,4])
  end
end

describe 'keys_and_values' do
  it 'takes in an object and returns the keys and values as separate arrays' do
    expect(keys_and_values({a: 1, b: 2, c: 3})).to eq([[:a, :b, :c], [1, 2, 3]])
  end
end
