class Vampire
    attr_reader :thirsty
    attr_reader :pet
    def initialize(name, pet = "bat")
        @name = name
        @pet = pet
        @thirsty = true
    end
    def name
        @name
    end
    def drink
        @thirsty = false
    end
end