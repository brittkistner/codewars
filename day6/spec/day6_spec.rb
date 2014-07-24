require './day6.rb'

describe 'get_squares' do
  it 'return an array of numbers from the array that qualify as perfect squares' do
    expect(get_squares((1..16))).to eq([1, 4, 9, 16])
  end
end

describe '.conjure' do
  xit 'it should define a new instance method in the Conjurer class with the method name equal to the name parameter, and with the method body equal to the lambda.' do
  end
end

describe 'solution' do
  it 'return a string of the form short+long+short, with the shorter string on the outside and the longer string on the inside.' do
    expect(solution("hello","hi")).to eq("hihellohi")
    expect(solution("","h")).to eq("h")
  end
end

describe 'SantaClausable Interface' do
  class SantaClaus
    def say_ho_ho_ho
      # Ho Ho Ho!
    end

    def distribute_gifts
      # Gifts for all!
    end

    def go_down_the_chimney
      # Whoosh!
    end
  end

  class NotSantaClaus
    def say_ho_ho_ho
    end
  end

  xit 'should implement the SantaClausable interface' do
    Test.assert_equals is_santa_clausable(SantaClaus.new), true
  end

  xit 'should not implement the SantaClausable interface' do
    Test.assert_equals is_santa_clausable(NotSantaClaus.new), false
  end
end
