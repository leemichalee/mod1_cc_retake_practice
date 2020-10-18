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
end