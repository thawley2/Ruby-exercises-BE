class Medusa
    attr_reader :name, :statues
    def initialize(name)
        @name = name
        @statues = []
    end
    def count
        @statues.length
    end
    def stare(victim)
        if victim.stoned? == true
            "#{victim.name} is already stoned and cannot be stoned again."
        elsif @statues.length == 3 
            p "#{@statues.first.name} is no longer stoned but #{victim.name} is now stoned."
            @statues.first.stoned = false
            @statues.shift
            victim.stoned = true
            @statues << victim
        else
            @statues << victim
            victim.stoned = true
        end
    end
end 

class Person
    attr_writer :stoned
    attr_reader :name
    def initialize(name)
        @name = name
        @stoned = false
    end
    def stoned?
        @stoned
    end
   
end

# def <<victim   Method overiding

 # def stoned=()    Look into this "setter method"
    #     @stoned
    # end