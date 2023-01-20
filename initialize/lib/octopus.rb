class Octopus
    attr_reader :name 
    def initialize(name, import)
        @name = name
        @import = import
    end
    def friend
        @import
    end
end
