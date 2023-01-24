class Cupcakes
    def initialize
        @cupcakes = []
    end
    def <<(new_cake)
        @cupcakes << new_cake
    end
    def sweetest
        @cupcakes.max_by {|cake| cake.sugar 
        }
    end
end