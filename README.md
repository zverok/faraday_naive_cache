# Naive cache middleware for Faraday

Very naive. Such useful. Wow.

Usage:

```ruby
require 'faraday'
require 'faraday/naive_cache'

connection = Faraday.new 'http://example.com/api' do |conn|
  conn.use Faraday::NaiveCache
  conn.adapter Faraday.default_adapter
end

conn.get 'some_endpoint' # real query

# and then...
conn.get 'some_endpoint' # get file from disc, stored in tmp/cache
```

## TODO

* Path settings;
* Cache invalidation strategies;
* Many other useful enchancements.
