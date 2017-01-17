# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

wall_art_1 = Item.create!(
  name: "Fabuart",
  category: "Art",
  # location: "Tampa",
  description: "The Vineyards a beautiful gated & highly coveted community of Westchase. Enter the home to massive great room with soaring 20'' ceilings and upgraded distressed hardwood flooring. This move in ready home boasts 4 Bedrooms, Loft, 2.5 Baths & 2 Car Garage. The master bedroom is conveniently located downstairs and features a spacious master bathroom with dual sinks, walk­in shower & an over­sized walk in closet. Upstairs you''ll find 3 bedrooms and a loft perfect for play area or office. Upgrades include distressed hardwood floors throughout the living area, granite counter tops, hardwood cabinetry, all stainless steel appliances, new light fixtures and fans. The Vineyards is a gated community that includes water views, heated pool, walking trails and yard maintenance & private lakeside Gazebo. Make your plan to see this home now!",
  min_bid: 117_83,
)

librada_bracelet = Item.create!(
  name: "Tiffany's",
  category: "Jewelry",
  # location: "Tampa",
  description: "This incredibly distinctive Art Deco-era bracelet features an natural emerald surrounded by sculpted platinum ribbons encrusted with shimmering diamonds (approx. 2.00 total carat weigh).",
  min_bid: 8_500_00,
)
