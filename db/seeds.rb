# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Listing.delete_all

Listing.create(name: "Amazing flat in Paris", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Natus facere, velit accusamus nisi eveniet enim alias odit expedita quisquam, obcaecati debitis quam similique atque mollitia. Excepturi nostrum, provident necessitatibus eaque minus dignissimos culpa a voluptas laudantium repudiandae. A harum neque maiores commodi eaque modi exercitationem fuga, enim. Ipsa, aut, ducimus.", property_type: "Apartment", capacity: 4, address: "50 rue Montmartre, 75008 Paris", nightly_rate: 400, user_id: 1)

Listing.create(name: "Large house in Barcelona", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Natus facere, velit accusamus nisi eveniet enim alias odit expedita quisquam, obcaecati debitis quam similique atque mollitia. Excepturi nostrum, provident necessitatibus eaque minus dignissimos culpa a voluptas laudantium repudiandae. A harum neque maiores commodi eaque modi exercitationem fuga, enim. Ipsa, aut, ducimus.", property_type: "House", capacity: 10, address: "25 carrer del Riu del Or, 08034 Barcelona", nightly_rate: 800, user_id: 1)

Listing.create(name: "Loft in Saint Germain", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Natus facere, velit accusamus nisi eveniet enim alias odit expedita quisquam, obcaecati debitis quam similique atque mollitia. Excepturi nostrum, provident necessitatibus eaque minus dignissimos culpa a voluptas laudantium repudiandae. A harum neque maiores commodi eaque modi exercitationem fuga, enim. Ipsa, aut, ducimus.", property_type: "Unique space", capacity: 10, address: "50 boulevard Saint Germain, 75005 Paris", nightly_rate: 800, user_id: 1)
