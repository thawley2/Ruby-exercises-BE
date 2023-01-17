RSpec.describe 'sort_by pattern' do

  it 'sorts alphabetically' do
    words = ["broccoli", "Carrots", "FISH", "Bacon", "candy"]
    transformed = []
    words.each do |word|
      transformed << [word.downcase, word]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |sort_key, word|
      sorted << word
    end
    expect(sorted).to eq(["Bacon", "broccoli", "candy", "Carrots", "FISH"])
  end

  it 'alphabetically by last letter' do
    things = ["pill", "box", "glass", "water", "sponge"]
    transformed = []
    things.each do |thing|
      transformed << [thing[-1], thing]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |sort_key, thing|
      sorted << thing
    end
    expect(sorted).to eq(["sponge", "pill", "water", "glass", "box"])
  end

  it 'sort by distance' do
    distances = ["1cm", "9cm", "30cm", "4cm", "2cm"]
    transformed = []
    
    distances.each {|dis| 
    transformed << [dis.to_i, dis]
  }
    transformed = transformed.sort
    sorted = []
    transformed.each do |sort_key, distance|
      sorted << distance
    end
    expect(sorted).to eq(["1cm", "2cm", "4cm", "9cm", "30cm"])
  end

  it 'by length' do
    words = ["heteromorph", "ancyloceratina", "bioengineering", "mathematical", "bug"]
    trans = []
    words.each {|word|
      trans << [word.length, word]
  }
  trans = trans.sort
  sorted = []
  trans.each {|num, name|
    sorted << name
  }
    expect(sorted).to eq(["bug", "heteromorph", "mathematical", "ancyloceratina", "bioengineering"])
  end

  it 'by proximity to ten' do
    prices = [3.02, 9.91, 17.9, 10.01, 11.0]
    trans = []
    prices.each {|price|
      trans << [(10 - price).abs, price]
    }
    trans.sort!
    sorted = []
    trans.each {|diff, price| sorted << price}
    expect(sorted).to eq([10.01, 9.91, 11.0, 3.02, 17.9])
  end

  # Try to refactor
  it 'by number of cents' do
    prices = [3.02, 9.91, 7.9, 10.01, 11.0]
    splits = []
    prices.each {|price|
      splits << [price - price.to_i, price]}
    splits.sort!
    sorted = []
    splits.each {|decimal, price|
      sorted << price
    }

    # splits = []
    # prices.each {|price|
    #   splits << [price.to_s.split('.'), price].flatten  
    # }
    # cents_price = []
    # splits.each {|doll, cents, price|
    #   cents_price << [cents, price]
    # }
    # cents_price.sort!
    # sorted = []
    # cents_price.each {|string, price|
    #   sorted << price 
    # }
    expect(sorted).to eq([11.0, 10.01, 3.02, 7.9, 9.91])
  end
end
