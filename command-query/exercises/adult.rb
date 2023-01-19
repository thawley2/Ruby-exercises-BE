class Adult
    def initialize
        @sober = true
        @count_booze = 0
    end
    def consume_an_alcoholic_beverage
        @count_booze += 1
        @sober = false if @count_booze >= 3
    end
    def sober?
        @sober
    end
end
