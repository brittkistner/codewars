require './day3.rb'

describe 'time_for_milk_and_cookies' do
  it 'returns true if the date is December 24th, otherwise returns false' do
    expect(time_for_milk_and_cookies(Date.new(2001, 12, 24))).to eq(true)
  end
end
