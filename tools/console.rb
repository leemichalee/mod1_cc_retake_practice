# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

cheese = Recipe.new("cheese", "its literally just cheese")
pizza = Recipe.new("pizza", "cheese but with bread and tomatoes")
water = Recipe.new("water", "is it actually water tho?")

annalise = RestaurantOwner.new("Annalise Keating", 40)
connor = RestaurantOwner.new("Connor Walsh", 20)

lawbreakers = Restaurant.new(annalise, "Lawbreakers", 5)
weenies = Restaurant.new(connor, "Weenie Hut Juniors", 1)
lawabiders = Restaurant.new(annalise, "Lawabiders", 4)

pizza_item = MenuItem.new(lawbreakers, pizza, 100000)
cheese_item = MenuItem.new(lawbreakers, cheese, 6.2)
pizza2_item = MenuItem.new(weenies, pizza, 210301230)
water_item = MenuItem.new(lawabiders, water, 0.6)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
