# require 'faker'
require 'open-uri'
require 'json'

puts 'seeding'
Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

# Ingredient.create(name: 'lemon')
# Ingredient.create(name: 'ice')
# Ingredient.create(name: 'mint leaves')

# 10.times do
  # c = Cocktail.new(name: Faker::Coffee.blend_name)
  # p c
  # c.save!
  # puts 'Created one cocktail'
# end

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

serialized_ingredients = open(url).read

ingredients = JSON.parse(serialized_ingredients)

ingredients['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])

end

puts 'Done seeding'
