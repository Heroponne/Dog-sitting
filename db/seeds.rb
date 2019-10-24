# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all
City.destroy_all

city1 = City.create(city_name: "Paris")
city2 = City.create(city_name: "Strasbourg")
city3 = City.create(city_name: "Bordeaux")
city4 = City.create(city_name: "Dijon")
city5 = City.create(city_name: "Lyon")

50.times do
  Dogsitter.create(name: Faker::Name.first_name, city: City.all.sample)
  Dog.create(name: Faker::Creature::Dog.name, city: City.all.sample)
end

200.times do
  Stroll.create(dog: Dog.all.sample, dogsitter: Dogsitter.all.sample, duration_in_minutes: [30, 45, 60, 75, 90].sample)
end
