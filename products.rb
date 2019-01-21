require 'HTTP'

response = HTTP.get("http://localhost:3000/api/all_products")
puts JSON.pretty_generate(response.parse)