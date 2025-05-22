# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "open-uri"

puts "Cleaning up database..."


Superpower.destroy_all
User.destroy_all


user_1 = User.create!(email: "sarah.nova42@example.com", password:123456)
user_2 = User.create!(email: "jaxon.blade777@example.org", password:123456)
user_3 = User.create!(email: "emma.skylark99@example.net", password:123456)



puts "Creating Superpowers..."

file = URI.parse("https://res.cloudinary.com/dwsdxyzpp/image/upload/v1747868669/invisibility_vpnabn.png").open

superpower1 = Superpower.create!(
  name: "Invisibility",
  description: "Allows the user to become invisible at will, useful for stealth operations.",
  price: 1500,
  strength: "Low",
  user: user_1
)
superpower1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
superpower1.save

file = URI.parse("https://res.cloudinary.com/dwsdxyzpp/image/upload/v1747915502/flight_fit90h.png").open

superpower2 = Superpower.create!(
  name: "Flight",
  description: "Gives the user the ability to fly at high altitudes and speeds.",
  price: 3000,
  strength: "High",
  user: user_1
)

superpower2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
superpower2.save

file = URI.parse("https://res.cloudinary.com/dwsdxyzpp/image/upload/v1747868667/strength_bshvqf.png").open

superpower3 = Superpower.create!(
  name: "Super Strength",
  description: "Enhances the user's physical power far beyond human limits.",
  price: 2500,
  strength: "High",
  user: user_2
)

superpower3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
superpower3.save

file = URI.parse("https://res.cloudinary.com/dwsdxyzpp/image/upload/v1747868667/telepathy_r5b7ci.png").open

superpower4 = Superpower.create!(
  name: "Telepathy",
  description: "Enables the user to read minds and communicate mentally.",
  price: 2200,
  strength: "Medium",
  user: user_2
)

superpower4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
superpower4.save

file = URI.parse("https://res.cloudinary.com/dwsdxyzpp/image/upload/v1747868669/time_manipulation_zrfzms.png").open

superpower5 = Superpower.create!(
  name: "Time Manipulation",
  description: "Allows limited control over time — pausing or slowing it briefly.",
  price: 5000,
  strength: "Very High",
  user: user_3
)

superpower5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
superpower5.save

file = URI.parse("https://res.cloudinary.com/dwsdxyzpp/image/upload/v1747915916/teleportation_ibfnrs.png").open

superpower6 = Superpower.create!(
  name: "Teleportation",
  description: "Grants the ability to instantly travel between distant locations.",
  price: 3200,
  strength: "High",
  user: user_3
)

superpower6.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
superpower6.save

file = URI.parse("https://res.cloudinary.com/dwsdxyzpp/image/upload/v1747915760/waterbreath_eh4gm6.png").open

superpower7 = Superpower.create!(
  name: "Water Breathing",
  description: "Enables the user to breathe underwater indefinitely.",
  price: 1200,
  strength: "Low",
  user: user_3
)

superpower7.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
superpower7.save

puts "Done!"
