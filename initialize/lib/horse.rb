class Horse
    attr_reader :name
    attr_reader :diet
    def initialize(name)
        @name = name
        @diet = []
    end
    def add_to_diet(food)
        @diet << food
    end
end
