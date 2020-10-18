class Restaurant
    attr_accessor :name, :star_rating
    attr_reader :owner
    @@all = []

    def initialize(owner, name, star_rating)
        @owner = owner
        @name = name.to_s
        @star_rating = star_rating.to_i
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select{|items| items.restaurant == self}
    end

    def recipes
        self.menu_items.map{|items| items.recipe}
    end

    def has_dish?(recipe)
        recipes.include? recipe
    end
end