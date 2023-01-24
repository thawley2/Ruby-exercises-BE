class Catalog
    def initialize
        @list = []
    end
    def <<(product)
        @list << product
    end
    def cheapest
        if @list.length != 0
        cheapest_product = @list.min_by {|product| product.price}
        cheapest_product.name
        else
        nil
        end
    end
end