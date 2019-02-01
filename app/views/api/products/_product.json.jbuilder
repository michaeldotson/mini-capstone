json.id product.id
json.name product.name
json.price product.price
json.images product.images
json.description product.description
json.supplier_name product.supplier.name
json.email product.supplier.email
json.supplier_phone product.supplier.phone_number
json.current_user current_user
json.category_names product.category_names

json.formatted do
  json.discounted product.is_discounted?
  json.price number_to_currency(product.price)
  json.tax number_to_currency(product.tax)
  json.total number_to_currency(product.total)
end 

