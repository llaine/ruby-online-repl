# interactive online repl

WIP


Scenario to be reproduced 

```ruby
# Installing concurrent-ruby gem 
ruby app.rb concurrent-ruby
# Launching a repl session
irb
# Inside the session
require 'concurrent'
=> true

class Hello
  include Concurrent::Async

  def hello(name)
    "Hello, #{name}!"
  end
end
=> :hello
concurrent = Hello.new
r = concurrent.async.hello('World!') 
r.state
# => :pending
r.value 
# => "Hello, world!"
```




