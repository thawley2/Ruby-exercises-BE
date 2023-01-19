class Clock
    def initialize
        @time = 6
    end
    def time
        @time
    end
    def wait 
        @time += 1
        @time = 0 if @time == 12
    end
end