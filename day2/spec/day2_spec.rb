require './day2.rb'

describe 'solution' do
  it 'sorts an array of numbers' do
    expect(solution([1,10,2])).to eq([1,2,10])
  end

  it 'returns an empty array if given a nil value or empty array' do
    expect(solution('ab')).to eq([])
  end
end
