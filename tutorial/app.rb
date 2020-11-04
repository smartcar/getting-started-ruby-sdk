require "sinatra"
require "smartcar"

# Setting default port to 3000
set :port, 8000

# global variable to store the token
@@token = ''

# TODO: Authorization Step 1a: Create the Smartcar client object

get "/login" do
  # TODO: Authorization Step 1b: Launch Smartcar authentication dialog
end

get "/exchange" do
  # TODO: Authorization Step 3: Handle Smartcar response

  # TODO: Request Step 1: Obtain an access token
end

get "/vehicle" do
  # TODO: Request Step 2: Get vehicle ids

  # TODO: Request Step 3: Create a vehicle

  # TODO: Request Step 4: Make a request to Smartcar API
end
