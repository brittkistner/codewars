require './day3.rb'

describe 'time_for_milk_and_cookies' do
  it 'returns true if the date is December 24th, otherwise returns false' do
    expect(time_for_milk_and_cookies(Date.new(2001, 12, 24))).to eq(true)
  end
end

describe 'get_squares' do
  xit 'receives an array of elements, checks for elements which are a perfect square and returns those elements in an array sorted in ascending order with no duplicates' do
    expect(get_squares([3,6,9,4,25,16,4])).to eq([4,9,16,25])
  end
end

describe 'change' do
  it 'should return 11 followed by 24 zeros' do
    expect(change("ab")).to eq("11000000000000000000000000")
  end
end
