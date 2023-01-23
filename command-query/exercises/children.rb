class Children
    attr_reader :children
    def initialize
        @children = []
    end
    def eldest
        @children.max_by {|child| child.age}
    end 
    def <<(child)
        @children << child
    end
end