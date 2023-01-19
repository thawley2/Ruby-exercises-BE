class Children
    attr_reader :children
    @@children = nil
    def initialize
    end
    def eldest
        @@children
    end 
    def <<(child)
        @@children == nil ? @@children = child : @@children << child
    end
end