Supplier.create!([
  {name: "AMS", email: "ams@gmail.com", phone_number: "212-555-6666"},
  {name: "California Growers", email: "cagrowers@gmail.com", phone_number: "818-222-3344"},
  {name: "Country Wide", email: "cw@cw.com", phone_number: "707-856-9097"}
])

Product.create!([
  {name: "Michael Dotson Autographed Poster", price: "25.99", description: "🔥🔥🔥🔥🔥🔥🔥🔥Autographed poster of Michael Dotson: writer, director, philanthropist, entrepreneur.🔥🔥🔥🔥 ", supplier_id: 1},
  {name: "Bottled Air", price: "20.00", description: "Fresh air in a bottle", supplier_id: 2},
  {name: "Blue single by Mikarlo", price: "1.29", description: "Hit single 'Blue' by Mikarlo.", supplier_id: 3}
])

Image.create!([
  {url: "https://m.media-amazon.com/images/M/MV5BNTg3MmY3ODQtMGU1Ny00ZDJhLTgyMmUtZjlhN2EyMDU4NjA5XkEyXkFqcGdeQXVyMjUxNDA4OA@@._V1_SX625_CR0,0,625,999_AL_.jpg", product_id: 1},
  {url: "https://cdn.cnn.com/cnnnext/dam/assets/151216120831-canada-bottled-air-exlarge-169.jpeg", product_id: 2},
  {url: "https://distrokid.imgix.net/http%3A//distrokid.com/hyperfollow/art/mikarlo/fhGw?w=800&s=7f22ca9f9e1c43434e916199776e87c2", product_id: 3}
])