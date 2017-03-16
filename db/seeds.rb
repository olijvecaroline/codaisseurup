#Photo.delete_all

Category.delete_all
Event.delete_all
Profile.delete_all
User.delete_all

# Users
miriam = User.create!(email: "miriam@codaisseurup.com", password: "abcd1234")
wouter = User.create!(email: "wouter@codaisseurup.com", password: "abcd1234")
mat = User.create!(email: "mat@codaisseurup.com", password: "abcd1234")

puts "#{User.all.size} users create!d"

# Photos
photo1 = Photo.create!(remote_image_url:" https://res.cloudinary.com/olijve/image/upload/t_media_lib_thumb/v1489663079/sample.jpg")



# Events

event = Event.create!(
  name: "Monthly Yoga Weekend",
  description: "Let's come together and practice some asanas together in the woods!",
  location: "Amsterdam",
  includes_food: false,
  includes_drinks: true,
  price: 10.00,
  starts_at: 10.days.from_now,
  ends_at: 12.days.from_now,
  capacity: 100,
  active: true,
  user: miriam,
  photos: [photo1]
)


# Categories
Category.create!([
  { name: "Movements" },
  { name: "Outdoors & Adventure" },
  { name: "Tech" },
  { name: "Family" },
  { name: "Health & Wellness" },
  { name: "Sports & Fitness" },
  { name: "Learning" },
  { name: "Photography" },
  { name: "Food & Drink" },
])
