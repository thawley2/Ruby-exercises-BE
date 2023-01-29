class TrickOrTreater
    attr_reader :bag, :sugar_level
    def initialize(outfit)
        @outfit = outfit
        @bag = Bag.new
        @sugar_level = 0
    end
    def dressed_up_as
        @outfit.style
    end
    def has_candy?
        !@bag.empty?
    end
    def candy_count
        @bag.count
    end
    def eat
        @sugar_level += @bag.candies.last.sugar
        @bag.candies.pop
    end 
end