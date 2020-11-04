require "sinatra"
require "smartcar"

# Setting default port to 3000
set :port, 8000

# global variable to store the token
@@token = ''

# global variable to store the client
@@client = Smartcar::Oauth.new({
  test_mode: true,
  scope: ["required:read_vehicle_info"]
})

get "/login" do
  redirect @@client.authorization_url
end

get "/exchange" do
  code = params[:code]
  @@token = @@client.get_token(code)[:access_token]
  "OK"
end

get "/vehicle" do
  vehicle_ids =  Smartcar::Vehicle.all_vehicle_ids(token: @@token)
  vehicle = Smartcar::Vehicle.new(token: @@token, id: vehicle_ids.first)
  vehicle_attributes = vehicle.vehicle_attributes
  vehicle_attributes.to_hash.slice(*%I(id make model year)).to_json
end
