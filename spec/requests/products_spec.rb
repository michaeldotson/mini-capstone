require 'rails_helper'
before do
  #create supplier
  supplier = Supplier.create(name:"Harold", email:"harry@gmail.com", phone_number:"555-1212")

  #create products
  Product.create(
    name:"1 sock",
    price: 2, 
    description:"an old sock", 
    supplier_id: supplier.id
    )
  Product.create(
    name:"white yarn", 
    price: 10, 
    description:"astolen from grannys", 
    supplier_id: supplier.id
    )
  Product.create(
    name:"napkin", 
    price: 1, 
    description:"barely used", 
    supplier_id: supplier.id
    )

end

RSpec.describe "Suppliers", type: :request do
  describe "GET /api/suppliers" do
    it "should return all suppliers" do
      get "/api/suppliers"
      products = JSON.parse(response.body)
      expect(products.length).to eq(1)
    end
  end

  describe "GET /api/products/:id" do
    it 'returns a product with the proper attributes' do
      product_id = Product.first.id
      get "/api/products/#{product_id}"
      product = JSON.parse(response.body)
      expect(product["name"]).to eq("1 sock")
      expect(product["price"]).to eq(2)
    end
  end

  describe "POST /api/products/" do
    it 'should create a new product' do
      supplier = Supplier.create(name:"Harold", email:"harry2@gmail.com", phone_number:"555-1212")
      post "/api/products/", params:{
        name:"Nose hair clippings",
        price: 100,
        description:"celebrity nose hairs",
        supplier_id: supplier.id
        }
      product = JSON.parse(response.body)
      expect(product["name"]).to eq("Nose hair clippings")
    end

    it "should return an error status code with invalid data" do
      post "/api/products", params: {}
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
end
