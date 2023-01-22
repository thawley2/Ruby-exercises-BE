class Werewolf
    attr_reader :name, :location, :victims
    def initialize(name, location = 'Farm')
        @name = name
        @location = location
        @is_human = true
        @is_wolf = false
        @is_hungry = false
        @victims = []
    end
    def change!
        @is_human = !@is_human
        @is_wolf = !@is_wolf
        @is_hungry = !@is_hungry
    end
    def human?
        @is_human
    end
    def wolf?
        @is_wolf
    end
    def hungry?
        @is_hungry
    end
    def eat(victim)
        if @is_hungry == true && victim.status == :alive
            victim.status = :dead
            @is_hungry = !@is_hungry
            @victims << victim
        else "You cannot eat people while in human form."
        end

    end
end