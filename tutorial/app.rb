require "sinatra"
require "smartcar"

# Setting default port to 3000
set :port, 8000

# global variable to store the token
@@token = ''

# TODO: Authorization Step 1a: Initialize the Smartcar object

get "/login" do
  # TODO: Authorization Step 1b: Launch the authorization flow
end

get "/exchange" do
  # TODO: Authorization Step 3: Handle Smartcar response

  # TODO: Request Step 1: Obtain an access token
end

get "/vehicle" do
  # TODO: Request Step 2a: Get vehicle ids

  # TODO: Request Step 2b: Create a vehicle

  # TODO: Request Step 2c: Make a request to Smartcar API for the vehicle
end
