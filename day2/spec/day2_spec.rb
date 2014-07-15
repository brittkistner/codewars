require './day2.rb'

describe 'solution' do
  it 'sorts an array of numbers' do
    expect(solution([1,10,2])).to eq([1,2,10])
  end

  it 'returns an empty array if given a nil value or empty array' do
    expect(solution('ab')).to eq([])
  end
end

# def solution(nums)
#   Array(nums).sort
# end

describe 'sort_gift_code' do
  it 'takes a string and returns the string in alphabetical order' do
    expect(sort_gift_code("asofafdjhk")).to eq("aadffhjkos")
  end
end

describe 'sum' do
  it 'takes a an integer of 0 and returns 0' do
    expect(sum(0)).to eq(0)
  end

  it 'takes a an integer of 1 and returns 1' do
    expect(sum(1)).to eq(1)
  end

  it 'takes a varied amount of integers and returns the sum' do
    expect(sum(1,2,"a",5,10)).to eq(18)
  end
end

# def sum(*args)
#   args.select { |x| x.is_a?(Integer) }.reduce(:+)
# end
