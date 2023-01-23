class Ogre
    attr_reader :name, :home, :swings
    def initialize(name, home = "Swamp")
        @name = name
        @home = home
        @swings = 0
    end
    def encounter(human)
        human.encounter_counter += 1
        human.encounter_counter >= 3 ? human.notice_ogre = true : human.notice_ogre = false
        swing_at(human) if human.encounter_counter % 3 == 0
        
    end
    def swing_at(human)
        @swings += 1
        human.hits_taken += 1
    end
    def apologize(human)
        human.hits_taken = 0
    end
end


class Human
    attr_reader :name
    attr_accessor :encounter_counter, :notice_ogre, :hits_taken, :knocked_out
    def initialize(name = 'Jane')
        @name = name
        @encounter_counter = 0
        @notice_ogre = false
        @knocked_out = false
        @hits_taken = 0
    end
    def notices_ogre?
        @notice_ogre
    end
    def knocked_out?
        @hits_taken >= 2 ? @knocked_out = true : @knocked_out = false
    end
end
