class Recipe
    attr_reader :name
    attr_accessor :description
    @@all = []
    def initialize(name, description)
        @name = name.to_s
        @description = description.to_s
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select{|items| items.recipe == self}
    end

    def restaurants
        self.menu_items.map{|items| items.restaurant}
    end
end