class Monkey
    def initialize(name_type_food)
        @name_type_food = name_type_food
    end
    def name
        @name_type_food[0]
    end
    def type
        @name_type_food[1]
    end
    def favorite_food
        @name_type_food[2]
    end
end
