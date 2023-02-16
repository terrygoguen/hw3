# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Place.destroy_all
Post.destroy_all

sun_valley = Place.new
sun_valley["name"] = "Sun Valley, Idaho"
sun_valley.save

hockey_game = Post.new
hockey_game["title"] = "hockey game"
hockey_game["description"] = "scored a goal"
hockey_game["posted_on"] = 
hockey_game["place_id"] = sun_valley["id"]
hockey_game.save

grumpys = Post.new
grumpys["title"] = "favorite bar on earth"
grumpys["description"] = "beers"
grumpys["posted_on"] = "01/04/1993"
grumpys["place_id"] = sun_valley["id"]
grumpys.save

st_andrews = Place.new
st_andrews["name"] = "St. Andrews, Scotland"
st_andrews.save

golf = Post.new
golf["title"] = "golf"
golf["description"] = "hole in one"
golf["posted_on"] = "01/04/1993"
golf["place_id"] = st_andrews["id"]
golf.save


puts "There are now #{Place.all.count} places and #{Post.all.count} posts."