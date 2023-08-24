require 'sinatra'
require 'smartcar'

# Setting default port to 3000
set :port, 8000

# global variable to store the token
$token = ''

# global variable to store the client
$client = Smartcar::AuthClient.new({
                                      mode: 'test'
                                    })

get '/login' do
  redirect $client.get_auth_url(['required:read_vehicle_info', 'required:read_security'])
end

get '/exchange' do
  code = params[:code]
  $token = $client.exchange_code(code)[:access_token]
  redirect '/vehicle'
end

get '/vehicle' do
  vehicle_ids = Smartcar.get_vehicles(token: $token).vehicles
  vehicle = Smartcar::Vehicle.new(token: $token, id: vehicle_ids.first)
  vehicle_attributes = vehicle.attributes
  vehicle_attributes.to_h.slice(*%I[id make model year]).to_json
end

get '/connections' do
  amt = ENV['SMARTCAR_APPLICATION_MANAGEMENT_TOKEN']
  if amt
    connections = Smartcar.get_connections(amt: amt)
    connections_json = JSON.generate(connections)
    connections_string = connections_json.to_s
    connections_json
  else
    'Application management token not set'
  end
end