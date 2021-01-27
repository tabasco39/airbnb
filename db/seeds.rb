# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name: "Logement entier")
Category.create(name: "Logement unique")
Category.create(name: "jacouzi")
Category.create(name: "Camping")


Location.create(city_name: "Antsiranana")
Location.create(city_name: "Antananarivo")
Location.create(city_name: "Mahajanga")
Location.create(city_name: "Tamatave")
Location.create(city_name: "Toliara")
Location.create(city_name: "fianarantsoa")