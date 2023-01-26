class Direwolf
    attr_reader :name, :home, :size, :starks_to_protect
    def initialize(name, home = 'Beyond the Wall', size = 'Massive')
        @name = name
        @home = home
        @size = size
        @starks_to_protect = []
        @hunts_white_walkers = true
    end
    def protects(stark)
        if @starks_to_protect.length >= 2
            "#{@name} can only protect 2 Starks at the same time"
        else 
            @starks_to_protect << stark if @home == stark.location
            stark.safe = true
            @hunts_white_walkers = false
        end
    end
        def hunts_white_walkers?
            @hunts_white_walkers
        end
        def leaves(stark)
            @starks_to_protect = @starks_to_protect.reject {|person| person.name == stark.name}
            stark.safe = false
            stark
        end
        
end

class Stark
    attr_reader :name, :location, :safe
    attr_writer :safe
    def initialize(name, location = 'Winterfell')
        @name = name
        @location = location 
        @safe = false
        
    end
    def safe?
        @safe
    end
    def house_words
        'Winter is Coming'
    end
end