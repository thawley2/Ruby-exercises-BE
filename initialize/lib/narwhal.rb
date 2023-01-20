class Narwhal
    def initialize(cute_weight_name)
        @cute_weight_name = cute_weight_name
    end
    def name
        @cute_weight_name[:name]
    end
    def weight
        @cute_weight_name[:weight]
    end
    def cute?
        @cute_weight_name[:cute]
    end
end
