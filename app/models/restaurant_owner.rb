class RestaurantOwner
    attr_accessor :name, :age
    @@all = []
    def initialize(name, age)
        @name = name.to_s
        @age = age.to_i
        @@all << self
    end

    def self.all
        @@all
    end

    def restaurants
        Restaurant.all.select{|resters| resters.owner == self}
    end

    def menu_items
        MenuItem.all.select{|items| items.restaurant.owner == self}
        #Caryn version
        #self.restaurants.map { |rest| rest.menu_items}
    end

    def self.average_age
        self.all.sum{|owners| owners.age} / self.all.length
    end

    def sell_restaurant(restaurant, buyer)
        restaurant.owner = buyer
    end
end
