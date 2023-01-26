class Clearance
    attr_reader :best_deals
    def initialize
        @best_deals = []
    end
    def <<(item)
        @best_deals << item 
    end
    def best_deal
        if @best_deals.length == 0
            nil 
        else
            deals = @best_deals.map do |item|
           ((item.price[:discount].to_f / item.price[:price].to_f) * 100)
            end
            deal_index = deals.index(deals.max)
            @best_deals[deal_index].name
        end
    end
end