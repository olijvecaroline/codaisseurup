# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Photo.delete_all
Event.delete_all
User.destroy_all


miria = User.create(email: "miriam@codaisseurbnb.com", password: "abcd1234")
bernie = User.create(email: "bernie@codaisseurbnb.com", password: "abcd123")
barry = User.create(email: "barry@codaisseurbnb.com", password: "abcd12")

zappa = Category.create(name:"zappa")
blues = Category.create(name:"reno fernis")
barok = Category.create(name:"bach")
romantiek = Category.create(name:"Haydn")
amerikaans = Category.create(name:"Gershwin")

event1 = Event.create(name: "Zappa in A", description: "Zappa will be visiting the netherlands", location: "twin peaks", price: 100, capacity: 600, includes_food: true, includes_drinks: true, starts_at:(12.15), active: true, user: miria, categories: [zappa, blues])
event2 = Event.create(name: "Zappa in DH", description: "Zappa will be visiting The haqe", location: "log-house", price: 100, capacity: 600, includes_food: true, includes_drinks: true, starts_at:(12.15), active: true, user: miria, categories: [romantiek])
event3 = Event.create(name: "Zappa in A", description: "Zappa will be visiting Volendam", location: "downerpark", price: 100, capacity: 600, includes_food: true, includes_drinks: true, starts_at:(12.15), active: true, user: barny, categories: [zappa, ])

photo1 = Photo.create(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007276/28dab8dd748210a53c77bb284558a5ce5905ca6a_git9a9.jpg")
photo2 = Photo.create(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007276/99ca8b27a84b46c373803df268167d15c3488e99_tvrfql.jpg")
photo3 = Photo.create(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007282/20161005-q3895_hjoc8t.png")
