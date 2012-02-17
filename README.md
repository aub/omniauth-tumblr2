OmniAuth Tumblr2
================

This gem is an OmniAuth 1.0 Strategy for authenticating with the [Tumblr API V2](http://www.tumblr.com/docs/en/api/v2)

Usage
-----

Register your application with [Tumblr](http://www.tumblr.com/oauth/apps). *Important*: your callback
URL needs to be specified as [site_url]/auth/tumblr/callback.

Get started by adding the Tumblr strategy to your `Gemfile`:

```ruby
gem 'omniauth-tumblr2'
```

Then add the Tumblr strategy to your Rack middleware:

```ruby
use OmniAuth::Builder do
  provider :tumblr, ENV['TUMBLR_KEY'], ENV['TUMBLR_SECRET']
end
```

In Rails, create a file like @config/initializers/omniauth.com@:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :tumblr, ENV['TUMBLR_KEY'], ENV['TUMBLR_SECRET']
end
```

History
-------

This gem is borrowed heavily from Jamie Wilkinson's [omniauth-twitter](https://github.com/jamiew/omniauth-tumblr)
gem, but it supports v2 or the API and works properly in non-rails apps.

License
-------

Copyright (c) 2012 Aubrey Holland

This source code released under an MIT license.

