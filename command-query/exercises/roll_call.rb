class RollCall
    def initialize
        @names = []
    end 
    def <<(name)
       @names << name
    end
    def longest_name
        return nil if @names.empty?
        @names.max_by(&:length) 
    end
end 


