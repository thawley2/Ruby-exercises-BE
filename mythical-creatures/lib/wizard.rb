class Wizard
    attr_reader :name
    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
        @cast_count = 0
        @rested = true
    end
    def bearded?
        @bearded
    end
    def incantation(spell)
        "sudo #{spell}"
    end
    def rested?
        @cast_count >= 3 ? @rested = false : @rested
    end
    def cast
        @cast_count += 1
        "MAGIC MISSILE!"
    end
end