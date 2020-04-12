class HomeController < ActionController::Base
  def index
  end

  def login
    options = {test_mode: true,scope: ["required:read_odometer","required:read_vin","required:read_vehicle_info"]}
    url = Smartcar::Oauth.authorization_url(options)
    redirect_to url
  end

  def exchange
    session['token_hash'] = Smartcar::Oauth.get_token(params[:code])
    redirect_to '/vehicles'
  end

  def vehicles
    token = session['token_hash']['access_token']
    ids =  Smartcar::Vehicle.all_vehicle_ids(token: token)
    @vehicles = Smartcar::Vehicle.new(token: token, id: ids.first)
    @vehicles = ids.each_with_object([]) do |vehicle_id, vehicles|
      vehicles << Smartcar::Vehicle.new(token: token, id: vehicle_id)
    end
  end
end
