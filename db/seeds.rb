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
  {name: "Chicago Flour", sunlight: "Indirectly burn it.", water: "Handful amount of mud water every year", soil: "rotten egg mixed with crushed nuts", humidity: "Super Dry", temperature: "-60", climate: "Thunder Storm", pot_size: "Pinky finger size", description: "These oddly shaped flours bloom in December and January outdoors. These plants provide beautiful powders for the rest of the year once its bloomed.", img_url: "https://www.designboom.com/wp-content/uploads/2015/09/emilie-mori-explosive-flour-portraits-designboom-11.jpg"},
  {name: "cactus", sunlight: "lots", water: "very little", soil: "arid", humidity: "90", temperature: "400", climate: "cold", pot_size: "large", description: "WOW HERE WE ARE AGAIN WITH THE HOTEST SUMMER MIX TAPE OF 2010 CACTI IS MY HOME", img_url: "https://cdn.pixabay.com/photo/2016/06/13/07/32/cactus-1453793__340.jpg"},
  {name: "ficus", sunlight: "none", water: "always", soil: "rich", humidity: "10", temperature: "1", climate: "tropical", pot_size: "tiny", description: "WOW HERE WE ARE AGAIN WITH THE HOTEST SUMMER MIX TAPE OF 2010 FICUS IS MY HOME", img_url: "https://images-na.ssl-images-amazon.com/images/I/81Ez5uPN9vL._SY679_.jpg"},
  {name: "human", sunlight: "none", water: "2 liters daily", soil: "poor", humidity: "10", temperature: "98", climate: "cold", pot_size: "largest", description: "WOW HERE WE ARE AGAIN WITH THE HOTEST SUMMER MIX TAPE OF 2010 HUMAN IS MY HOME", img_url: "https://static.designboom.com/wp-content/dbsub/415914/2018-01-12/img_5_1515746637_5caa444b82045a287c33b88ae22a24a4.jpg"},
  {name: "dogwood", sunlight: "none", water: "daily", soil: "rich", humidity: "43", temperature: "40K", climate: "Tundra", pot_size: "Small", description: "WOW HERE WE ARE AGAIN WITH THE HOTEST SUMMER MIX TAPE OF 2010 DOGWOOD IS MY HOME", img_url: "https://cdn.shopify.com/s/files/1/0059/8835/2052/products/Cloud-9-dogwood-450w_grande.jpg?v=1549687022"},
  {name: "the abyss", sunlight: "none", water: "none", soil: "none", humidity: "0", temperature: "100000 Kelvin", climate: "none", pot_size: "none", description: "IT CONSUMES US ALL THE END IS HERE PLEASE RUN ITS COMING FOR US ALL DEAR GOD NO I DIDNT THINK IT WAS REAL PLEASE NO NOOOOO NOT LIKE THIS WHY MEEE WHY WHY OH GOD WHYYYYYY", img_url: "https://wallpapercave.com/wp/wp2450319.jpg"},
  {name: "african violet", sunlight: "indirect", water: "Water from below and pour every hour", soil: "organic potting", humidity: "unknown", temperature: "70-80°F", climate: "none", pot_size: "medium", description: "They’re known to bloom continuously, even throughout the darker months of winter. Place them throughout the house to enjoy their colors and velvety texture throughout the year.", img_url: "https://www.houseplantsexpert.com/assets/images/av-blue-1.jpg"},
  {name: "beach spider lily", sunlight: "partial shade to full sun", water: "Hymenocallis littoralis demands wet conditions all year long.", soil: "These plants prefer a standard potting soil mixed with bark or pumice at a 1:1 ratio.", humidity: "This plant is happy with normal air humidity, as long as its soil is properly moist. If the soil has been allowed to dry out, the leaves and flowers may be misted with a spray bottle to combat dehydration effects.", temperature: "40-90ºF", climate: "none", pot_size: "large", description: "From the bulb, individual shoots grow up from the soil. Each bulb will produce multiple shoots, each with strap-shaped leaves that arch up to 2 feet (60 cm) in length.", img_url: "https://www.houseplantsexpert.com/assets/images/beach_spider_lily_img.jpg"},
  {name: "amaryllis", sunlight: "Bright light without too much direct sunlight is preferable.", water: "During the growing and flowering period, water when the top inch of the soil becomes dry. Once the leaves are cut away you can stop watering for about 8 – 10 weeks (dormant period) or water sparingly until new growth appears. When new leaves appear water frequently again when the top inch of soil becomes dry. Overwatering may cause the bulb to rot.", soil: "You can use equal part perlite and peat or two parts loam soil and one part perlite. Your local garden store will offer other suitable options as well.", humidity: "Normal room humidity is fine.", temperature: "70 - 75F°", climate: "none", pot_size: "2 inches wider each side of the bulb", description: "The amaryllis talked about on this page are actually hippeastrum bulbous plants. Amaryllis is the common name for these plants, however, it is also the genus for another type of bulb from the same family (Amaryllidaceae) native to South Africa.", img_url: "https://www.houseplantsexpert.com/image-files/hippeastrum-plant.jpg"},
  {name: "bird of paradise", sunlight: "This plant demands bright, yet indirect, sunlight year-round. Too much sunlight will injure the flowers.", water: "During the summer months, the soil should be kept moist through regular watering. Throughout the fall and winter, permit the soil to almost dry out before watering. Never permit water to stand in the saucer underneath the plant.", soil: "	Strelitzia reginae does well in almost any type of soil. A standard potting soil will suffice for this plant's continued health.", humidity: "This plant prefers normal air humidity inside the home. During the winter months, you can mist the leaves of the plants to simulate rainfall, which will also improve humidity during the months that artificial heating is used.
", temperature: "70-90ºF", climate: "none", pot_size: "large", description: "Strelitzia reginae is a native to the eastern coastlines of southern Africa, where it grows wild in patches that are sometimes miles across. It is sometimes referred to as the Crane plant due to the flowers looking like the feathers on the head of a crane.", img_url: "https://www.houseplantsexpert.com/assets/images/bird_of_paradise_plant_1.jpg"},
  {name: "calla lily", sunlight: "This plant requires plenty of bright sunlight. Provide it with a sunny window facing east or west.", water: "Zantedeschia aethiopica is a water loving plant. It grows best on the edges of ponds and in the mud but never allow water to sit in the container.", soil: "Standard potting soil is a good mixture for this plant.", humidity: "Normal room humidity is acceptable for this plant, as long as the soil is kept moist.", temperature: "no hotter than 65°F and no colder than 55°F", climate: "none", pot_size: "medium", description: "Growing from a single rhizome, or bulb, this plant requires wet growing conditions in order to remain healthy. These oddly shaped flowers bloom in June and July outdoors, but from spring into fall if kept at the proper temperatures indoors. Otherwise, these plants provide beautiful leaves for the rest of the year.", img_url: "https://www.houseplantsexpert.com/image-files/calla-lily-plant.jpg"}
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
