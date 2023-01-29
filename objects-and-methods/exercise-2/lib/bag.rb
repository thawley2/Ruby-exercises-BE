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
        candy_to_compare.include?(candy_type)
    end
    def grab(candy_type)
        @candies.delete_at(@candies.find_index {|candy| candy.type == candy_type})
    end
    def take(number_of_candies)
        number_of_candies == 1 ? @candies.pop : @candies.pop(number_of_candies)
    end
end