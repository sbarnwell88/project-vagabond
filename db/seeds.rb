# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


City.destroy_all

atlanta = City.create(name: 'Atlanta', image: 'http://i.imgur.com/Si3Hcen.png', description: 'Atlanta is Georgia''s largest city and capital. It is a thriving business center with an eclectic mix of residents back dropped by a city with southern roots. With a flare for the arts, Atlanta offers visitors and residents a wide selection of museums, classical music venues and a thriving theatre scene. A major city means major sports teams. Catching an Atlanta Falcons, Hawks or Braves game can make for a thrill of a lifetime.')
london = City.create(name: 'London', image: 'https://www.newhdwallpapers.in/wp-content/uploads/2014/09/Nice-View-London-Big-Bin-Night-Photo.jpg', description: 'London is the capital and largest city of England and the United Kingdom. 8.63 million people live in London, which is on the River Thames. London is the biggest city in western Europe, and the world''s largest financial centre. London was founded by the Romans in AD 43 and called Londinium.')
sanfran = City.create(name: 'San Francisco', image: 'https://www.californiabeaches.com/wp-content/uploads/2014/09/bigstock-Baker-Beach-San-Francisco-Large.jpg', description: 'San Francisco is located on the West Coast of the United States at the north end of the San Francisco Peninsula and includes significant stretches of the Pacific Ocean and San Francisco Bay within its boundaries.')



