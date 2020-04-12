This is the starter kit for Ruby SDK.

This kit contains a simple rails app to display car information using Smartcar's Ruby gem.

## Instructions
Before we get started, create an application on Smartcar's Developer Dashboard to get your API keys.

**Note:** On the dashboard, you will want to set your `redirect_uri` as `http://localhost:3000/exchange`.

Then, we can set these as environment variables -
```bash
$ export CLIENT_ID=<your-client-id>
$ export CLIENT_SECRET=<your-client-secret>
$ export REDIRECT_URI=http://localhost:3000/exchange
```

Make sure you have cloned this repo -
```bash
$ git clone https://github.com/smartcar/getting-started-ruby-sdk.git
$ cd getting-started-ruby-sdk
```

**Note:** This app was built on ruby 2.7 and Rails 5.2.

To install the required dependencies and run this Rails app -
```bash
$ bundle install
$ rails s
```

Once your server is up and running, you can authenticate your vehicle. In our current set up, we are using Smartcar's [test mode](https://smartcar.com/docs/guides/testing/), so you can log in with any username and password. 

To authenticate, navigate to `http://localhost:3000/login`. Once you have authenticated you will be redirected to `http://localhost:8000/vehicles` to see information about all of your vehicles.

## Next Steps
Read our [API Docs](https://smartcar.com/docs/api) to learn what else you can do with Smartcar's API.

Learn more about the [Ruby SDK](https://github.com/smartcar/ruby-sdk) and how it can be used.