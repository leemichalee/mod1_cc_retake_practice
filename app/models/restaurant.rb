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
end