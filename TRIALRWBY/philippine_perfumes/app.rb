require 'sinatra'
require 'sinatra/reloader' if development?

# Route for home page
get '/' do
  erb :index
end

# Route for product catalog
get '/catalog' do
  @products = [
    { name: "Sampaguita Bliss", price: 500 },
    { name: "Manila Mist", price: 450 },
    { name: "Tropical Sunrise", price: 600 }
  ]
  erb :product_catalog
end

# Route for the order form
get '/order' do
  erb :order_form
end
