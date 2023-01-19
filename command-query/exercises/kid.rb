class Kid
    def initialize
        @grams_of_sugar = 0
        @hyper = false
    end
    def grams_of_sugar_eaten
        @grams_of_sugar
    end
    def eat_candy
        @grams_of_sugar += 5
    end
    def hyperactive?
        @grams_of_sugar >= 60 ? @hyper = true : @hyper
    end
end 
