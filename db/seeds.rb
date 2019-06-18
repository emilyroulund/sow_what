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
