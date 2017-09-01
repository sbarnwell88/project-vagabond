# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
City.destroy_all

#cities
atlanta = City.create(name: 'Atlanta', image: 'http://i.imgur.com/wj6mTlm.png', description: "Atlanta is Georgia's largest city and bustling capital. It is a thriving business center with an eclectic mix of residents surrounded by a city with southern roots. With a flare for the arts, Atlanta offers visitors and residents a wide selection of museums, music venues and a thriving arts and theatre scene. A major city means major sports teams- catching a Falcons, Hawks, United, or Braves game can make for a thrill of a lifetime.")
london = City.create(name: 'London', image: 'http://i.imgur.com/OQ01Mrp.png', description: "At one time London was the largest city in the world. Although now it is exceeded by several megacities on different continents, it remains a city that fascinates and attracts millions of visitors each year. London is one of those great cosmopolitan centers that offer the visitor not just an unparalleled choice of museums and monuments, but also an unforgettable experience and a change of scenery. London is London, and no other city in the world is like it.")
sanfran = City.create(name: 'San Francisco', image: 'http://i.imgur.com/VhMBJ6v.png', description: "A mosaic of colorful, distinctive neighborhoods, San Francisco, California, is a city of trend-setting high fashion and famous postcard views. Within this seven-by-seven-mile metropolis perched on a peninsula amid 43 hills, you’ll find ethnic enclaves such as the Mission District, leafy parks like the Presidio and Golden Gate, tony residential areas such as Nob Hill, and the gleaming office towers of the Financial District.")

# # Atlanta posts
# rooftop = Post.create(title: 'Ponce City Market Rooftop', tip: "They have mini golf, boardwalk style games, and craft cocktails!")
# mountain = Post.create(title: 'Stone Mountain', tip: "The hiking and fireworks are great.")
# aquarium = Post.create(title: 'Atlanta Aquarium', tip: "Largest aquarium in the world. Dolphin show is awesome!")

# #london
# nottinghill = Post.create(title: 'Notting Hill Carnival', tip: 'Fantactic atmosphere. The food is always incredible and the floats are awesome!')
# bigben = Post.create(title: "Big Ben", tip: "Cool landmark. Iconic clocktower.")

# #san francisco
# goldengate = Post.create(title: "Golden Gate Bridge", tip: "Really cool views")
# yosemite = Post.create(title: "Yosemite National Park", tip: "Sequoias really are gigantic!")

# atlanta.posts = [
#     rooftop,
#     mountain,
#     aquarium
# ]

# london.posts = [
#     nottinghill,
#     bigben
# ]

# sanfran = [
#     goldengate,
#     yosemite
# ]


