class MenuItem
    attr_accessor :price
    attr_reader :restaurant, :recipe
    @@all = []

    def initialize(restaurant, recipe, price)
        @restaurant = restaurant
        @recipe = recipe
        @price = price.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    def owner
        self.restaurant.owner
    end

    def self.most_expensive_item
        highest = self.all.map{|items| items.price}.max
        self.all.select{|items| items.price == highest}
        #Caryn Method
        #self.all.max_by{|mi| mi.price}
    end
end
