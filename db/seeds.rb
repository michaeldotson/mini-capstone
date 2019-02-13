User.create!([
  {name: "Leslie Cook", email: "leslie@gmail.com", password_digest: "$2a$10$s5alVLmLKDpYMVqRLEgWmOO4qYTkKnHMgn7gZUnpPUFAGAPBWmnDG", admin: false},
  {name: "Herman Lansing", email: "jaild@life.com", password_digest: "$2a$10$Twa32YY83ecscj9ZRE68m.9JzG18/8D1o3mY3Bb0ZgNYh5SiHrG.u", admin: false},
  {name: "Minerva Lawson", email: "minerva@yahoo.com", password_digest: "$2a$10$qV6VHvMoV3iaCFnVrQ.d8u2fM1UfYUPqKayA3IjxWf1tnk.1sURwO", admin: false},
  {name: "Dale Lemons", email: "dale@gmail.com", password_digest: "$2a$10$WM3LJixcBAF5okRVv6hCg.2mLcC9vLSRj7Ic8vwyHzr4K4mqau8bu", admin: false},
  {name: "Mark", email: "mark@gmail.com", password_digest: "$2a$10$.OHh9Xk2PZ3WyHBAS1Y8vuxCAaATBPyiF/TZ7qwl1b1L4x9B0Cfam", admin: false},
  {name: "mike", email: "mike@gmail.com", password_digest: "$2a$10$Syz5UGBth9QhyGiFVfAEYuhjo1SsOTbS/qtQ30z/bXw6xhaE8rFb.", admin: true},
  {name: "Nessa Bear", email: "nessa@gmail.com", password_digest: "$2a$10$iZafmQHOGCl/7WhLmOHTl.MTEFD1lCZcegU/0dswtq7vpUG4MOY7.", admin: false}
])
CategoryProduct.create!([
  {product_id: 11, category_id: 5},
  {product_id: 14, category_id: 6},
  {product_id: 11, category_id: 3},
  {product_id: 11, category_id: 1},
  {product_id: 6, category_id: 3},
  {product_id: 3, category_id: 3},
  {product_id: 3, category_id: 4},
  {product_id: 5, category_id: 6},
  {product_id: 4, category_id: 6},
  {product_id: 2, category_id: 1},
  {product_id: 2, category_id: 4},
  {product_id: 10, category_id: 2}
])
Order.create!([
  {user_id: 3, subtotal: "217.58", tax: "19.58", total: "237.16"},
  {user_id: 3, subtotal: "13.99", tax: "1.26", total: "15.25"},
  {user_id: 1, subtotal: "1.29", tax: "0.12", total: "1.41"},
  {user_id: 4, subtotal: "1.29", tax: "0.12", total: "1.41"},
  {user_id: 4, subtotal: "44.75", tax: "4.03", total: "48.78"},
  {user_id: 2, subtotal: "399.95", tax: "36.0", total: "435.95"},
  {user_id: 4, subtotal: "1050.0", tax: "94.5", total: "1144.5"},
  {user_id: 4, subtotal: "49.99", tax: "4.5", total: "54.49"},
  {user_id: 4, subtotal: "49.99", tax: "4.5", total: "54.49"},
  {user_id: 2, subtotal: "12.99", tax: "1.17", total: "14.16"},
  {user_id: 5, subtotal: "13.99", tax: "1.26", total: "15.25"},
  {user_id: 5, subtotal: "44.75", tax: "4.03", total: "48.78"},
  {user_id: 5, subtotal: "20.0", tax: "1.8", total: "21.8"},
  {user_id: 5, subtotal: "25.99", tax: "2.34", total: "28.33"},
  {user_id: 5, subtotal: "3150.0", tax: "283.5", total: "3433.5"},
  {user_id: 1, subtotal: "4.99", tax: "0.09", total: "5.44"},
  {user_id: 5, subtotal: "12289.02", tax: "1106.01", total: "13395.03"},
  {user_id: 5, subtotal: "64.75", tax: "5.83", total: "70.58"},
  {user_id: 5, subtotal: "13.99", tax: "1.26", total: "15.25"},
  {user_id: 7, subtotal: "27.28", tax: "2.46", total: "29.74"},
  {user_id: 1, subtotal: "237.97", tax: "21.42", total: "259.39"}
])
Product.create!([
  {name: "Aluminum Water Bottle", price: "12.99", description: "Water bottle made of aluminum", supplier_id: 3},
  {name: "Michael Dotson Autographed Poster", price: "25.99", description: "🔥🔥🔥🔥🔥🔥🔥🔥Autographed poster of Michael Dotson: writer, director, philanthropist, entrepreneur.🔥🔥🔥🔥 ", supplier_id: 1},
  {name: "Boiled Pickle Juice", price: "13.99", description: "About the product\nPurified and fortified pickle flavored purpose built sports drink\nStops and prevents muscle cramps\nContains over 10 times the electrolytes as most sports drinks\nCaffeine free, sugar free and gluten free\nNo artificial flavors or preservatives", supplier_id: 1},
  {name: "Legendary Battery Powered Socks", price: "49.99", description: "🔥HEATING DEVICE：YIZRIO heated socks heat up within 1 minutes. The temperature up to 120 °F to warm cold feet in winter;3 levels seletable temperature setting - High (Red), medium(orange) and low(green) setting. These socks are absorbent, breathable, quick-drying, elastic thickened, soft and durable.There's a pouch that you insert the waterproof battery into. UPGRADING & CHARGING：The red light on the charger indicates that the battery is charging, green when fully charged.\n\n", supplier_id: 3},
  {name: "Bottled Air", price: "20.0", description: "Fresh air in a bottle", supplier_id: 2},
  {name: "Blue single by Mikarlo", price: "1.29", description: "Hit single 'Blue' by Mikarlo.", supplier_id: 1},
  {name: "Office Chair", price: "217.58", description: "Water bottle made of aluminumComfortCore Plus with Memory Foam advanced layering system provides plush cushioning and optimal firmness for exceptional support and comfort", supplier_id: 1},
  {name: "Freestyle Libre Glucose Monitor", price: "84.95", description: "Continuous glucose monitoring system", supplier_id: 2},
  {name: "Life Size Yoda Doll", price: "125.0", description: "Rare Collectible Life Size Yoda made of a latex material on a plastic base and dressed in real fabric clothing. The perfect gift for the Star Wars collector or for a home theater room display. Comes on original base which has some cracking/ damage, but that can be removed. ", supplier_id: 1},
  {name: "Black Superman Costume", price: "725.21", description: "Handmade itemSize: Custom Size US letter, chestMaterials: Spandex, Screen Print, LatexMade to orderFavorited by: 25 people", supplier_id: 2},
  {name: "Samsung Electronics UN82MU8000 82-Inch 4K Ultra HD Smart LED TV (2017 Model)", price: "2599.99", description: "An extreme step up in color with a billion more shades than regular UHD.See extreme contrast between the da", supplier_id: 2}
])
Image.create!([
  {url: "https://i.etsystatic.com/6486155/r/il/9feb00/1427026055/il_fullxfull.1427026055_t5ii.jpg", product_id: 4},
  {url: "https://images-na.ssl-images-amazon.com/images/I/51FeUn2U5GL._UX679_.jpg", product_id: 6},
  {url: "https://images-na.ssl-images-amazon.com/images/I/91Xn5B7KFOL._SL1500_.jpg", product_id: 1},
  {url: "https://www.qualitylogoproducts.com/custom-waterbottles/aluminum-petite-bottle-superextralarge.jpg", product_id: 2},
  {url: "https://hips.hearstapps.com/digitalspyuk.cdnds.net/18/48/1543319990-tyler-hoechlin-black-superman-suit.jpg", product_id: 4},
  {url: "https://s3.images-iherb.com/opn/opn02414/l/3.jpg", product_id: 5},
  {url: "https://i.etsystatic.com/6661833/r/il/c216cc/1663878672/il_1140xN.1663878672_bi4d.jpg", product_id: 10},
  {url: "https://distrokid.imgix.net/http%3A//distrokid.com/hyperfollow/art/mikarlo/fhGw?w=800&s=7f22ca9f9e1c43434e916199776e87c2", product_id: 13},
  {url: "https://cdn.cnn.com/cnnnext/dam/assets/151216120831-canada-bottled-air-exlarge-169.jpeg", product_id: 12},
  {url: "https://m.media-amazon.com/images/M/MV5BNTg3MmY3ODQtMGU1Ny00ZDJhLTgyMmUtZjlhN2EyMDU4NjA5XkEyXkFqcGdeQXVyMjUxNDA4OA@@._V1_SX625_CR0,0,625,999_AL_.jpg", product_id: 11},
  {url: "https://www.staples-3p.com/s7/is/image/Staples/s1028541_sc7?wid=512&hei=512", product_id: 3},
  {url: "https://images-na.ssl-images-amazon.com/images/I/61nwVjadYAL._SL1000_.jpg", product_id: 14},
  {url: "https://www.freestylelibre.us/content/dam/adc/freestylelibreus/images/14D_FSL_Reader_Sensor_Hover.png", product_id: 15}
])

Supplier.create!([
  {name: "AMS", email: "ams@gmail.com", phone_number: "212-555-6666"},
  {name: "Country Wide", email: "cw@cw.com", phone_number: "707-856-9097"},
  {name: "California Growers", email: "cagrowers@gmail.com", phone_number: "818-222-3344"}
])
CartedProduct.create!([
  {user_id: 5, product_id: 6, quantity: 3, status: "purchased", order_id: 17},
  {user_id: 5, product_id: 3, quantity: 1, status: "purchased", order_id: 17},
  {user_id: 5, product_id: 3, quantity: 1, status: "purchased", order_id: 17},
  {user_id: 5, product_id: 4, quantity: 1, status: "purchased", order_id: 17},
  {user_id: 5, product_id: 1, quantity: 11, status: "purchased", order_id: 17},
  {user_id: 5, product_id: 4, quantity: 10, status: "removed", order_id: 17},
  {user_id: 5, product_id: 5, quantity: 1, status: "purchased", order_id: 20},
  {user_id: 5, product_id: 12, quantity: 1, status: "purchased", order_id: 20},
  {user_id: 5, product_id: 12, quantity: 0, status: "purchased", order_id: 20},
  {user_id: 5, product_id: 1, quantity: 1, status: "purchased", order_id: 21},
  {user_id: 5, product_id: 1, quantity: 99, status: "removed", order_id: nil},
  {user_id: 7, product_id: 13, quantity: 1, status: "purchased", order_id: 22},
  {user_id: 7, product_id: 11, quantity: 1, status: "purchased", order_id: 22},
  {user_id: 1, product_id: 6, quantity: 2, status: "purchased", order_id: 23},
  {user_id: 1, product_id: 2, quantity: 1, status: "purchased", order_id: 23},
  {user_id: 1, product_id: 10, quantity: 1, status: "purchased", order_id: 23}
])
Category.create!([
  {name: "Hot Item"},
  {name: "Damaged"},
  {name: "New Item"},
  {name: "Limited Time Offer"},
  {name: "For Her"},
  {name: "For Him"}
])



