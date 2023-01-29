class Candy
    attr_reader :sugar
    def initialize(name, sugar = 100)
        @name = name
        @sugar = sugar
    end
    def type
        @name
    end
end