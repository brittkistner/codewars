require './day5.rb'

describe 'greet' do
  it 'returns the string hello world' do
    expect(greet).to eq("hello world!")
  end
end

describe 'sortme' do
  it 'sorts an array of strings' do
    expect(sortme(["suzie", "alinna", "ben"])).to eq(["alinna", "ben", "suzie"])
  end
end

describe 'frozen' do
  it 'applies the freeze method to the MrFreeze class' do
    MrFreeze.frozen
    expect(MrFreeze.frozen?).to eq(true)
  end
end

describe 'solution' do
  it 'returns a 5 digit padded number given a value' do
    expect(solution(50)).to eq("Value is 00050")
  end
end

describe 'sort_array' do
  it 'sorts an array or returns an empty array if nil' do
    expect(sort_array(nil)).to eq([])
    expect(sort_array([40,1,50])).to eq([1,40,50])
  end
end

describe 'sort_hashes' do
  it 'sorts an array of hashes by value and returns the array' do
    expect(sort_hashes([{a: 1}, {a: 5}, {a: 3}], :a)).to eq([{a:1}, {a: 3}, {a: 5}])
  end
end
