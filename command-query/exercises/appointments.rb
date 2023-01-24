class Appointments
    def initialize
        @appointments = []
    end
    def at(time_slot)
        @appointments << time_slot
    end
    def earliest
        @appointments.min
    end
end



# class Time
#     def initialize(year, month, day, hour, min = 00)
#         @year = year
#         @month = month 
#         @day = day 
#         @hour = hour
#         @min = min 
#     end
# end
