require 'pry-byebug'
require './day1.rb'

RSpec.configure do |config|
  config.failure_color = :magenta
  config.tty = true
  config.color = true
end


describe 'square' do
  it 'takes a number and returns the square of the number' do
    expect(square(2)).to eq(4)
  end
end

describe 'Array' do
  describe 'second' do
    it 'returns nil if there is only 1 element in the array' do
      array_new = Array.new
      array_new.push(1)

      expect(array_new.second).to eq(nil)
    end

    it 'returns the second element in the array' do
      array_new = Array.new
      array_new.push(1,2)

      expect(array_new.second).to eq(2)
    end
  end
end

describe 'bool_to_word' do
  it 'returns Yes when the boolean value is true' do
    expect(bool_to_word(true)).to eq('Yes')
  end
  it 'returns No when the boolean value is true' do
    expect(bool_to_word(false)).to eq('No')
  end
end

describe 'greeting' do
  it 'takes a name and returns a greeting with the name capitalized and an exclaimation point' do
    expect(greeting('sherry')).to eq("Hello Sherry!")
  end
end

describe 'flatten' do
  it 'takes an array and flattens one level of an Array object' do
    array = [0,a,b[c,d,e],1,2,[[2]]]
    expect(flatten(array)).to eq([0,a,b,c,d,e,1,2,[2]])
  end
end

describe 'calculate' do
  it 'calculates the sum of (2+2)*2' do
    expect(calculate).to eq(8)
  end
end

describe 'say_hello' do
  it 'joins a argument and produces a welcome string' do
    expect(say_hello(["claudia","james"],"cleveland", "ohio")).to eq("Hello, Claudia James! Welcome to Cleveland, Ohio!")
  end
end

describe 'solution' do
  it 'takes an array of keys and returns a hash with all keys set to the default_value' do
    expect(solution([:hello, :world], true)).to eq({:hello => true, :world => true})
  end
end

describe 'number_solution' do
  it 'takes an integer and returns an integer with two decimal places'do
    expect(number_solution(23.23049)).to eq(23.23)
  end
end


