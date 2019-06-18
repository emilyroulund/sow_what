CommentUpvote.destroy_all
Comment.destroy_all
Favorite.destroy_all
PlantLike.destroy_all
Plant.destroy_all
User.destroy_all
users = [
  {name: "Micheal Alfred", username: "Micheal_Is_King", password: "password1234" },
  {name: "Dave Alfred", username: "Dave_Is_King", password: "password1234" },
  {name: "Jane Alfred", username: "Jane_Is_Queen", password: "password1234" },
  {name: "John Alfred", username: "John_Is_King", password: "password1234" },
  {name: "Jenny Alfred", username: "Jenny_Is_Queen", password: "password1234" },
]

users.each {|user| User.create(user)}

plants = [
  {name: "cactus", sunlight: "lots", water: "very little", soil: "arid", humidity: "90", temperature: "400", climate: "cold", pot_size: "large", description: "WOW HERE WE ARE AGAIN WITH THE HOTEST SUMMER MIX TAPE OF 2010 CACTI IS MY HOME", img_url: "https://cdn.pixabay.com/photo/2016/06/13/07/32/cactus-1453793__340.jpg"},
  {name: "ficus", sunlight: "none", water: "always", soil: "rich", humidity: "10", temperature: "1", climate: "tropical", pot_size: "tiny", description: "WOW HERE WE ARE AGAIN WITH THE HOTEST SUMMER MIX TAPE OF 2010 FICUS IS MY HOME", img_url: "https://images-na.ssl-images-amazon.com/images/I/81Ez5uPN9vL._SY679_.jpg"},
  {name: "human", sunlight: "none", water: "2 liters daily", soil: "poor", humidity: "10", temperature: "98", climate: "cold", pot_size: "largest", description: "WOW HERE WE ARE AGAIN WITH THE HOTEST SUMMER MIX TAPE OF 2010 HUMAN IS MY HOME", img_url: "https://static.designboom.com/wp-content/dbsub/415914/2018-01-12/img_5_1515746637_5caa444b82045a287c33b88ae22a24a4.jpg"},
  {name: "dogwood", sunlight: "none", water: "daily", soil: "rich", humidity: "43", temperature: "40K", climate: "Tundra", pot_size: "Small", description: "WOW HERE WE ARE AGAIN WITH THE HOTEST SUMMER MIX TAPE OF 2010 DOGWOOD IS MY HOME", img_url: "https://cdn.shopify.com/s/files/1/0059/8835/2052/products/Cloud-9-dogwood-450w_grande.jpg?v=1549687022"},
  {name: "the abyss", sunlight: "none", water: "none", soil: "none", humidity: "0", temperature: "100000 Kelvin", climate: "none", pot_size: "none", description: "IT CONSUMES US ALL THE END IS HERE PLEASE RUN ITS COMING FOR US ALL DEAR GOD NO I DIDNT THINK IT WAS REAL PLEASE NO NOOOOO NOT LIKE THIS WHY MEEE WHY WHY OH GOD WHYYYYYY", img_url: "https://wallpapercave.com/wp/wp2450319.jpg"}
]

plants = plants.map { |plant| plant.merge( { user_id: User.all.sample.id } ) }

plants.each {|plant| Plant.create(plant) }

comments = [
  {title: "This is a dope plant", content: "This plant is super dope yo like the dopest of plants my dudeeee its like the best my dude like always the the best"},
  {title: "This is a trash plant", content: "This plant is super trash yo like the trashst of plants my dudeeee its like the worst my dude like always the the worst"},
  {title: "This is a average plant", content: "This plant is super average yo like the averagest of plants my dudeeee its like neutral my dude like always the the neutral"},
  {title: "This is a amazing plant", content: "This plant is super amazing yo like the amazingst of plants my dudeeee its like amazing my dude like always the the amazing"},
  {title: "This is a crazy plant", content: "This plant is super crazy yo like the craziest of plants my dudeeee its like crazy my dude like always the the crazy"},
]

comments = comments.map { |comment| comment.merge( { user_id: User.all.sample.id, plant_id: Plant.all.sample.id} ) }

comments.each {|comment| Comment.create(comment) }

(1..5).to_a.sample.times do
  PlantLike.create(user: User.all.sample, plant: Plant.all.sample)
end

(1..5).to_a.sample.times do
  Favorite.create(user: User.all.sample, plant: Plant.all.sample)
end

(1..5).to_a.sample.times do
  CommentUpvote.create(user: User.all.sample, comment: Comment.all.sample)
end
