class Parrot
    def initialize(name_words)
        @name_words = name_words
        @sound = 'Squawk!'
    end
    def name
        @name_words[:name]
    end
    def sound
        @sound
    end
    def known_words
        @name_words[:known_words]
    end
end
