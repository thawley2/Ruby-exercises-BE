class Centaur
    attr_reader :name, :breed, :shot_run_counter
    def initialize(name, breed)
        @name = name
        @breed = breed
        @cranky = false
        @standing = true
        @shot_run_counter = 0
    end
    def cranky?
        @shot_run_counter == 3 ? @cranky = true : @cranky = false
    end

    def shoot
        if cranky? || !@standing
            "NO!"
        else
            @shot_run_counter += 1
            'Twang!!!'
        end
    end
    def run
        if cranky? || !@standing
            "NO!"
        else
            @shot_run_counter += 1
            'Clop clop clop clop!'
        end
    end
    def standing?
        @standing
    end
    def laying?
        @standing == false ? true : false
    end
    def lay_down
        @standing = false
    end
    def stand_up
        @standing = true
    end
    def sleep
        if @standing
            "NO!"
        else 
            @shot_run_counter = 0
            "ZZZZZZZZZ"
        end
    end
    def drink_potion
        if @standing && @shot_run_counter == 0
            @shot_run_counter = 3
            "You drank a potion on an empty stomach and now you are sick, bummer."
        elsif 
            @standing && @shot_run_counter <= 3
            @shot_run_counter = 0
            "You feel rejuvinated!"
        else "You can only drink potions when standing"
        end
    end
end