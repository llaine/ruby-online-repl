# interactive online repl

WIP


Scenario to be reproduced 

```ruby
# Installing concurrent-ruby gem 
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




