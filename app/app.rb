require 'sinatra'
require 'smartcar'

# Setting default port to 3000
set :port, 8000

# global variable to store the token
@@token = ''

# global variable to store the client
@@client = Smartcar::AuthClient.new({
                                 test_mode: true,
                               })

get '/login' do
  redirect @@client.get_auth_url(['required:read_vehicle_info'])
end

get '/exchange' do
  code = params[:code]
  @@token = @@client.exchange_code(code)[:access_token]
  'OK'
end

get '/vehicle' do
  vehicle_ids = Smartcar.get_vehicles(token: @@token).vehicles
  vehicle = Smartcar::Vehicle.new(token: @@token, id: vehicle_ids.first)
  vehicle_attributes = vehicle.attributes
  vehicle_attributes.to_h.slice(*%I[id make model year]).to_json
end
