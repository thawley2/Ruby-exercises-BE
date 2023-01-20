class Dragon
    attr_reader :name, :color, :rider
    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @is_hungry = true
        @eat_counter = 0
    end
    def hungry?
        @is_hungry
    end 
    def eat
        @eat_counter += 1
        @is_hungry = false if @eat_counter >= 3
    end
end