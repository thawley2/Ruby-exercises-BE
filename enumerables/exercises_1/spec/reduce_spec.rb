RSpec.describe 'reduce' do

  it 'sums a list of numbers' do
    numbers = [32, 1, 21, 5, 81, 333]
    result = numbers.reduce(0) do |sum, number|
      sum + number
    end
    expect(result).to eq(473)
  end

  it 'subtracts a list of numbers' do
    numbers = [28, 12, 38, 1, 91]
    result = numbers.reduce(0) do |difference, number|
      difference -= number
    end
    expect(result).to eq(-170)
  end

  it 'multiplies a list of numbers' do
    numbers = [2, 3, 5, 7]
    result = numbers.reduce {|multiply, num| multiply *= num}
    expect(result).to eq(210)
  end
# come back to this one
  it 'capitalize key words in phrase' do
    keywords = ["fish", "blue"]
    value = 'one fish two fish red fish blue fish'
    result = keywords.reduce(value) {|words, word| words.gsub!(word, word.upcase)}
    expect(result).to eq('one FISH two FISH red FISH BLUE FISH')
  end

  it 'divides 560 by a bunch of numbers' do
    numbers = [2, 2, 2, 5, 7]
    value = 560
    result = numbers.reduce(value) {|total, num| total /= num
}
    expect(result).to eq(2)
  end

  it 'subtract smallest values from 100' do
    elements = [[8, 5, 3], [1, 9, 11], [4, 7, 2], [19, 34, 6]]
    value = 100
    result = elements.reduce(value) {|total, num| total -= num.min}
    expect(result).to eq(88)
  end

  it 'adds all second values together' do
    elements = [["a", 1], ["b", 9], ["c", 21]]
    result = elements.reduce(0) {|sum, num| sum += num[1]}
    expect(result).to eq(31)
  end
end

