
fabuart = User.create!(name: "Fabuart")
mary_ellen_anderson = User.create!(name: "Mary Ellen Anderson")
satinart = User.create!(name: "Satinart")
pat_nicolle = User.create!(name: "Pat Nicolle")
brilliant_earth = User.create!(name: "Brilliant Earth")
fantasy_jewels = User.create!(name: "Fantasy Jewels")
tiffany = User.create!(name: "Tiffany's")
ralphs_doodads = User.create!(name: "Ralph's DooDads")
jolanda = User.create!(name: "Jolanda")
raymour = User.create!(name: "Raymour")
cantana = User.create!(name: "Cantana")
premium_wood_designs = User.create!(name: "Premium Wood Designs")
jsa_loa = User.create!(name: "Jsa Loa")
john_doe = User.create!(name: "John Doe")
gavin_stark = User.create!(name: "Gavin Stark")
sharon_needles = User.create!(name: "Sharon Needles")
seymour_butts = User.create!(name: "Seymour Butts")

tampa = Event.create!(location: "Tampa")
chicago = Event.create!(location: "Chicago")
portland = Event.create!(location: "Portland")

# Art
wall_art_1 = Item.create!(
  name: "Wall Art",
  user: fabuart,
  category: "Art",
  event: tampa,
  description: "The Vineyards a beautiful gated & highly coveted community of Westchase. Enter the home to massive great room with soaring 20'' ceilings and upgraded distressed hardwood flooring. This move in ready home boasts 4 Bedrooms, Loft, 2.5 Baths & 2 Car Garage. The master bedroom is conveniently located downstairs and features a spacious master bathroom with dual sinks, walk­in shower & an over­sized walk in closet. Upstairs you''ll find 3 bedrooms and a loft perfect for play area or office. Upgrades include distressed hardwood floors throughout the living area, granite counter tops, hardwood cabinetry, all stainless steel appliances, new light fixtures and fans. The Vineyards is a gated community that includes water views, heated pool, walking trails and yard maintenance & private lakeside Gazebo. Make your plan to see this home now!",
  min_bid: 117_83,
  final_bid: 120_000,
  photo: File.open(Rails.root.join("db/seeds/images/tampa/wall_art_1.jpg"))
)

mother_and_son = Item.create!(
  name: "Wall Art",
  user: mary_ellen_anderson,
  category: "Art",
  event: chicago,
  description: "The intimate and protective relationship between mothers and their sons, is examined in this piece by Mary Ellen Anderson. A study of pose and fabrics. The richness and elegance of the Victorian era are depicted in this charming painting of a boy and his mother. Vintage styles of dress and ancient stone create a bygone day. ",
  min_bid: 685_000,
  final_bid: 700_000,
  photo: File.open(Rails.root.join("db/seeds/images/chicago/mother_and_son.png"))
)

wall_art_2 = Item.create!(
  name: "Wall Art",
  user: satinart,
  category: "Art",
  event: portland,
  description: "As a professional artwork manufacturers, SANTINART has already produced tons of paintings which are distributed to all over the world including North America, Europe, Australia during the past couple of years. As one of the top sellers on Amazon, our products are all fulfilled by Amazon, which means our products are stored in Amazon warehouse and shipped to our buyers upon purchase directly which makes your online shopping more convenient and faster arrival to your hands. The painting is stretched onto a wooden stretcher frame, easy to hang. Paintings are packed in the carton box.",
  min_bid: 26_90,
  final_bid: 27_000,
  photo: File.open(Rails.root.join("db/seeds/images/portland/wall_art_2.jpg"))
)

camel = Item.create!(
  name: "Wall Art",
  user: pat_nicolle,
  category: "Art",
  event: tampa,
  description: "The Story of Jacob - God Speaks at Penuel (gouache on paper)",
  min_bid: 424_89,
  final_bid: 450_000,
  photo: File.open(Rails.root.join("db/seeds/images/tampa/camel.png"))
)

# Jewelry
arlena_ring = Item.create!(
  name: "Ring",
  user: brilliant_earth,
  category: "Jewelry",
  event: chicago,
  description: "This impressive Retro-era ring features a teal colored round zircon center with ribbons of diamond accented metal on the top. The classic knife edge band adds to the remarkable look of this platinum piece (approx. 0.56 total carat weight).",
  min_bid: 10_950_00,
  final_bid: 11_000_000,
  photo: File.open(Rails.root.join("db/seeds/images/chicago/arlena_ring_1.png"))
)

amsterdam_earrings = Item.create!(
  name: "Earrings",
  user: fantasy_jewels,
  category: "Jewelry",
  event: portland,
  description: "At once luxurious and iconic, these 18K yellow gold and selectively rhodium plated white gold Edwardian style earrings are sure to turn heads. 5.85 carats of glistening blue zircons rest at the center of a floral halo dangling from bezel set diamonds and two adorning leaves (approx. 3.25 total carat weight).",
  min_bid: 9_900_00,
  final_bid: 11_000_000,
  photo: File.open(Rails.root.join("db/seeds/images/portland/amsterdam_earrings.png"))
)

librada_bracelet = Item.create!(
  name: "Bracelet",
  user: tiffany,
  category: "Jewelry",
  event: tampa,
  description: "This incredibly distinctive Art Deco-era bracelet features an natural emerald surrounded by sculpted platinum ribbons encrusted with shimmering diamonds (approx. 2.00 total carat weigh).",
  min_bid: 8_500_00,
  final_bid: 10_000_000,
  photo: File.open(Rails.root.join("db/seeds/images/tampa/librada_bracelet_1.png"))
)

montenegro_necklace = Item.create!(
  name: "Necklace",
  user: ralphs_doodads,
  category: "Jewelry",
  event: chicago,
  description: "Distinctive in its detail, this platinum Retro-era necklace features a 3.5 carat sapphire surrounded by a halo of round brilliant and baguette cut diamonds for a truly remarkable look (approx. 2.54 total carat weight).",
  min_bid: 8_900_00,
  final_bid: 10_000_000,
  photo: File.open(Rails.root.join("db/seeds/images//chicago/montenegro_necklace.png"))
)


#Furniture
u_couch = Item.create!(
  name: "Desk",
  user: jolanda,
  category: "Furniture",
  event: tampa,
  description: "Smart, high-tech and contemporary, Jolanda is a multi functional lounge group that has many unbeatable features. Shelf storage, inbuilt lamp and adjustable headrest, make your living space fun, entertaining and functional.",
  min_bid: 3_390_00,
  final_bid: 3_500_000,
  photo: File.open(Rails.root.join("db/seeds/images/tampa/u_couch.jpg"))
)

grey_sofa = Item.create!(
  name: "Sofa",
  user: fabuart,
  category: "Furniture",
  event: chicago,
  description: "Whether you're having friends over for cocktails or want to spend time with family, the Finnegan sofa provides the perfect seating. Its sloped arms, topstitching and button tufting offer attractive accents, while the bold poppy-red and plaid charcoal accent pillows create a warm and inviting atmosphere for your guests. Plus, the seat cushions are reversible to withstand constant use.",
  min_bid: 800_00,
  final_bid: 900_000,
  photo: File.open(Rails.root.join("db/seeds/images/chicago/grey_sofa.png"))
)

dining_table = Item.create!(
  name: "Table",
  user: raymour,
  category: "Furniture",
  event: portland,
  description: "Dramatic and unforgettable, the Gables double pedestal dining table with leaf draws inspiration from classic Italian art and architecture. Its generous scale features exquisite carvings, exotic wood veneers and a rich, hand-polished blackened sorrel finish. This impressive piece is designed for gracious living and illustrates how beautiful design is in the details.",
  min_bid: 3_000_00,
  final_bid: 3_500_000,
  photo: File.open(Rails.root.join("db/seeds/images/portland/dining_table.png"))
)

desk = Item.create!(
  name: "Desk",
  user: cantana,
  category: "Furniture",
  event: portland,
  description: "The Cantata computer credenza has traditional elements and a warm, burnished cherry finish. It has a stately, antique look with an updated finish and modern conveniences. The credenza has a top center drawer with a drop front and a power bar for easy power and wire management.",
  min_bid: 1_760_00,
  final_bid: 1_800_000,
  photo: File.open(Rails.root.join("db/seeds/images/portland/desk.png"))
)

# Memorabilia
delorean = Item.create!(
  name: "Sports Memorabilia",
  user: jsa_loa,
  category: "Memorabilia",
  event: portland,
  description: "MICHAEL J. FOX MARTY MCFLY SIGNED BACK TO THE FUTURE II DELOREAN 1/15 JSA LOA	Comes fully certified with Certificate of Authenticity and tamper-evident hologram. Also backed by SportsMemorabilia.com's Authenticity Guarantee. This item is fully backed by SportsMemorabilia.com.com's ironclad Authenticity Guarantee.",
  min_bid: 2_273_00,
  final_bid: 2_300_000,
  photo: File.open(Rails.root.join("db/seeds/images/portland/delorean.png"))
)

cessna = Item.create!(
  name: "Model Replica",
  user: premium_wood_designs,
  category: "Memorabilia",
  event: tampa,
  description: "This Scale Model Replica is a Wonderful Representation of the the Cessna Citation. Handcrafted of Solid Mahogany, this Plane has Movable Props and Wheels, Three Coats of Polyurethane Finish for High Gloss and Rich Wood Grain.",
  min_bid: 80_00,
  final_bid: 90_000,
  photo: File.open(Rails.root.join("db/seeds/images/tampa/cessna.jpg"))
)

wood_car = Item.create!(
  name: "Vintage Car",
  user: premium_wood_designs,
  category: "Memorabilia",
  event: tampa,
  description: "A true classic, the 1969 Chevrolet Camaro stands out as the Favorite Vehicle of an Entire Generation. This Scale Model Replica in Solid Mahogany is handcrafted with Fine Details, Deep Wood Grain and Multiple Coats of Polyurethane Finish.",
  min_bid: 89_00,
  final_bid: 95_000,
  photo: File.open(Rails.root.join("db/seeds/images/tampa/wood_car.jpg"))
)

vader = Item.create!(
  name: "Figurine",
  user: jsa_loa,
  category: "Memorabilia",
  event: portland,
  description: "James Earl Jones & David Prowse Signed 31-inch Action Figure 'Darth Vader' Jsa Loa",
  min_bid: 1_364_00,
  final_bid: 1_500_000,
  photo: File.open(Rails.root.join("db/seeds/images/portland/vader.png"))
)


#Tickets
bulls_v_kings = Item.create!(
  name: "Tickets",
  user: john_doe,
  category: "Tickets",
  event: chicago,
  description: "4 Tickets to see the Chicago Bulls take on the Sacramento Kings. Seats: 13-16 (All seats are together) Aisle. Section: 104. Row: 19.",
  min_bid: 237_00,
  final_bid: 250_000,
  photo: File.open(Rails.root.join("db/seeds/images/chicago/bulls_v_kings.png"))
)

chris_rock = Item.create!(
  name: "Tickets",
  user: gavin_stark,
  category: "Tickets",
  event: tampa,
  description: "This is for a pair of two tickets to see Chris Rock in Tampa Florida at the Starz Center on April 14, 2017 at 8pm. It is on the floor in the Orchestra section row R. Would make a great Christmas gift.",
  min_bid: 200_00,
  final_bid: 250_000,
  photo: File.open(Rails.root.join("db/seeds/images/tampa/chris_rock.png"))
)

u_2 = Item.create!(
  name: "Tickets",
  user: sharon_needles,
  category: "Tickets",
  event: tampa,
  description: "Floor General Admission Ticket U2 & OneRepublic Tampa 6/14 GA Raymond James",
  min_bid: 270_00,
  final_bid: 280_000,
  photo: File.open(Rails.root.join("db/seeds/images/tampa/u_2.jpg"))
)

neil_diamond = Item.create!(
  name: "Tickets",
  user: seymour_butts,
  category: "Tickets",
  event: portland,
  description: "Neil Diamond Tickets Portland OR Moda Center 7/28/17 FRONT ROW",
  min_bid: 1_350_00,
  final_bid: 1_450_000,
  photo: File.open(Rails.root.join("db/seeds/images/portland/neil_diamond.png"))
)

neil_diamond_2 = Item.create!(
  user: fabuart,
  category: "Tickets",
  event: portland,
  description: "Neil Diamond Tickets Portland OR Moda Center 7/28/17 FRONT ROW",
  min_bid: 10,
  bid_increment: 5,
  photo: File.open(Rails.root.join("db/seeds/images/portland/neil_diamond.png"))
)
