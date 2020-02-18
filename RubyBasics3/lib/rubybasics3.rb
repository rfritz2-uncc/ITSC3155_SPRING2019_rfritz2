# Ruby Basics Part 3

class BookInStock
# YOUR CODE HERE
    attr_accessor :isbn, :price

    def initialize(isbn, price)
        @isbn = isbn
        @price = price
        raise ArgumentError if isbn.empty?
        raise ArgumentError if price <= 0
    end
    def price_as_string
        format = "$%.2f" % @price
    end
end