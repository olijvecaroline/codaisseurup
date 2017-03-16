# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
User.destroy_all

miria = User.create(email: "miriam@codaisseurbnb.com", password: "abcd1234")

zappa = Category.create(name:"zappa")
blues = Category.create(name:"reno fernis")
barok = Category.create(name:"bach")
romantiek = Category.create(name:"Haydn")
amerikaans = Category.create(name:"Gershwin")

event = Event.create(name: "Zappa in A", description: "Zappa will be visiting the netherlands", location: "twin peaks", price: 100, capacity: 600, includes_food: true, includes_drinks: true, starts_at:(12.15), active: true, user: miria, categories: [zappa, blues])
