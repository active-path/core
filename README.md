# ActivePath
ActivePath provides an interface for rendering your partials. 


## View Injection:

https://github.com/active-path/view-injection


## Path Hints:

https://github.com/active-path/path-hints


## Product Roadmap (TODO)

* User docs
* Specs and CI build


## Custom Installation 

Add to your Gemfile:

```ruby
gem 'active_path'
```

Add the initializer `config/initializers/active_path.rb` and enable `ActivePath`:

```ruby

ActivePath.configure do |config|

  config.enabled = true

end

```

Now create a subscriber where you will have access to `context`, `buffer`, `options`, `locals` and subscribe to the `render_partial` event:

```ruby
require 'active_path/subscribers/subscriber'
class Subscriber < ActivePath::Subscribers::Subscriber
  def perform
    ...
  end
end
ActiveSupport::Notifications.subscribe(:render_partial, Subscriber.new)
```


--

Feel free to [submit issues](https://github.com/active-path/core/issues) or [help make it better](https://github.com/active-path/core/pulls).