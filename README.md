This is the starter kit for Ruby SDK.

This kit contains a simple Sinatra app to display car information using Smartcar's Ruby gem.

## Instructions
Before we get started, create an application on Smartcar's Developer Dashboard to get your API keys.

**Note:** On the dashboard, you will want to set your `redirect_uri` as `http://localhost:8000/exchange`.

Then, we can set these as environment variables -
```bash
$ export SMARTCAR_CLIENT_ID=<your-client-id>
$ export SMARTCAR_CLIENT_SECRET=<your-client-secret>
$ export SMARTCAR_REDIRECT_URI=http://localhost:8000/exchange
$ export SMARTCAR_APPLICATION_MANAGEMENT_TOKEN=<your-amt>
```

Make sure you have cloned this repo -
```bash
$ git clone https://github.com/smartcar/getting-started-ruby-sdk.git
$ cd getting-started-ruby-sdk/app
```

**Note:** This app is compatible with 2.7 and above

To install the required dependencies and run this Sinatra app -
```bash
$ bundle install
$ bundle exec ruby app.rb
```

Once your server is up and running, you can authenticate your vehicle. In our current set up, we are using Smartcar's [test mode](https://smartcar.com/docs/guides/testing/), so you can log in with any username and password.

To authenticate, navigate to `http://localhost:8000/login`. Once you have authenticated, go to `http://localhost:8000/vehicles` to see your vehicle information.

## Next Steps
Read our [API Docs](https://smartcar.com/docs/api) to learn what else you can do with Smartcar's API.

Learn more about the [Ruby SDK](https://github.com/smartcar/ruby-sdk) and how it can be used.
