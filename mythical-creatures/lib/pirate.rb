class Pirate
    attr_reader :name, :job, :booty
    def initialize(name, job = 'Scallywag')
        @name = name
        @job = job
        @cursed = false
        @commit_act_counter = 0
        @booty = 0
    end 
    def cursed?
        @cursed
    end
    def commit_heinous_act
        @commit_act_counter += 1
        @cursed = true if @commit_act_counter >= 3
    end
    def rob_ship
        @booty += 100
    end
end