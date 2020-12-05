# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pin.create(category: "Fashion", img_url: "https://www.indoindians.com/wp-content/uploads/2020/01/2020-fashion-trends-feature-1280x720.jpg", description: "Fashion Trends 2020", label: "vogue", link_to_product: "https://www.indoindians.com/9-fashion-trends-for-2020/")
Pin.create(category: "Food", img_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bbcgoodfood.com%2Frecipes%2Fcollection%2Feasy-recipes&psig=AOvVaw1t2otKoOcDWeUj-2DnKwtQ&ust=1607139712056000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIjCoZC0s-0CFQAAAAAdAAAAABAD", description: "Easy Recipes", label: "General", link_to_product: "https://www.bbcgoodfood.com/recipes/collection/easy-recipes")
Pin.create(category: "Fashion", img_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/80s-outfits-2019-1548781035.jpg?crop=1.00xw:1.00xh;0,0&resize=1200:*", description: "Cute '80s Oufit Ideas", label: "Elle", link_to_product: "https://www.elle.com")
Pin.create(category: "Interior Decor", img_url: "https://essentialhome.eu/inspirations/wp-content/uploads/2017/01/The-Importance-Of-Interior-Design-4.jpg", description: "The Importance of Interior Design", label: "vogue", link_to_product: "https://www.essentialhome.eu/inspirations/interiors-decor/importance-interior-design/")

@user = User.create(username: "test", password: "test", name: "Test", email: "test@test.com")
# @board = Board.create(user_id: 1)

Favorite.create(user_id: 1, pin_id: 1)
Favorite.create(user_id: 1, pin_id: 2)
Favorite.create(user_id: 1, pin_id: 3)
# BoardPin.create(board_id: 1, pin_id: 1)
# BoardPin.create(board_id: 1, pin_id: 2)
# BoardPin.create(board_id: 1, pin_id: 3)
# BoardPin.create(board_id: 2, pin_id: 3)
