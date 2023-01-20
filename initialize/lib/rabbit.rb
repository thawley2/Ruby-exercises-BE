class Rabbit
    def initialize(name_syllables)
        @name_syllables = name_syllables
    end
    def name
        @name_syllables[:name] == 'Rita' ? @name_syllables[:name] + ' Rabbit' : @name_syllables[:name]
    end
end