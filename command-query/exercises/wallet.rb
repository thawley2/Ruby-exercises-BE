class Wallet
    
    def initialize
        @cents = []
    end
    def <<(coin)
        @cents << coin
    end
    def take(*coins)
        coins.each do |coin| 
            if @cents.find_index(coin) == nil 
            else
            @cents.delete_at(@cents.find_index(coin))
            end
        end
    end
    def cents
        sum_of_coins = 0
        @cents.each do |symbol| 
            sum_of_coins += 
            case symbol
                when :penny then 1
                when :nickel then 5
                when :dime then 10
                when :quarter then 25
                else 0
            end
        end
        sum_of_coins
    end
end