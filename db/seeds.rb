#Photo.delete_all

Photo.delete_all
Category.delete_all
Event.delete_all
Profile.delete_all
User.delete_all

# Categories
Category.create!([
  { name: "Movements" },
  { name: "Outdoors" },
  { name: "Family" },
  { name: "Sports" },
])

puts "#{Category.all.size} categories created"


# Users
miriam = User.create!(email: "miriam@codaisseurup.com", password: "abcd1234")
wouter = User.create!(email: "wouter@codaisseurup.com", password: "abcd1234")
mat = User.create!(email: "mat@codaisseurup.com", password: "abcd1234")

puts "#{User.all.size} users created"






# Photos
#basketbal = #Photo.create!(remote_image_url:"http://res.cloudinary.com/olijve/image/upload/v1489691189/i%CC%81ndicedam_zq8fuy.jpg" )
voetbal = Photo.create!(remote_image_url:"http://res.cloudinary.com/olijve/image/upload/v1489691183/Ing_pupillenvoetbal_0_3_o1eb0k.jpg")
schaatsen = Photo.create!(remote_image_url:"http://res.cloudinary.com/olijve/image/upload/v1489691175/300px-Ireen_wust_2007_ln252k.jpg")

puts "#{Photo.all.size} photos created"


# Events
nk_schaatsen = Event.create!(
  name: "schaatswedstrijd",
  description: "Watch dutch finest in action",
  location: "Leeuwarden",
  includes_food: true,
  includes_drinks: true,
  price: 20.00,
  starts_at: 10.days.from_now,
  ends_at: 12.days.from_now,
  capacity: 100,
  active: true,
  user: miriam,
  #categories:[("Movements")]
  photos: [schaatsen]
  )

puts "#{Event.all.size} events created"
