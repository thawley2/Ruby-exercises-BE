class Bag
    attr_reader :candies
    def initialize
        @candies = []
    end
    def empty?
        @candies.length == 0 ? true : false
    end
    def count
        @candies.length
    end
    def <<(candy)
        @candies << candy
    end
    def contains?(candy_type)
        candy_to_compare = @candies.map {|candy| candy.type}
        candy_to_compare == [candy_type]
    end
        
end