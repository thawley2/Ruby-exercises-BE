class RollCall
    def initialize
        @names = nil
    end 
    def <<(name)
        @names == nil ? @names = [name] : @names << name
    end
    def longest_name
        @names.max_by(&:length) if @names != nil
    end
end 
