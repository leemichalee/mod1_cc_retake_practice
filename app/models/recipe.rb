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
end