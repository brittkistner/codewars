require './day4.rb'
require 'pry-byebug'

describe 'remove_odd_hashes' do
  it 'removes hashes where the keys sum to an odd number' do
    expect(remove_odd_hashes([ {'a'=>5, 'b'=>5}, {'a'=>3, 'b'=>4}, {'a'=>2, 'b'=>0}, {'a'=>2, 'b'=>1}],'a','b')).to eq([{'a'=>5, 'b'=>5}, {'a'=>2, 'b'=>0}])
  end
end
