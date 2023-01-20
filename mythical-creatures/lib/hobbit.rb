class Hobbit
    attr_reader :name, :disposition, :age
    def initialize(name, disposition = 'homebody')
        @name = name
        @disposition = disposition
        @age = 0
        @adult = false
        @old = false
        @has_ring = has_ring?
        @is_short = true
    end
    def celebrate_birthday
        @age += 1
    end
    def adult?
        @age >= 33 ? @adult = true : @adult
    end
    def old?
        @old = true if @age >= 101
    end
    def has_ring?
        @name == 'Frodo' ? true : false
    end
    def is_short?
        @is_short
    end
end