class Lion
    def initialize(name_sound)
        @name_sound = name_sound
    end
    def name
        @name_sound[:name]
    end
    def sound
        @name_sound[:sound]
    end
end