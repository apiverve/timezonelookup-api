# Timezone Lookup API - Ruby Gem

Timezone Lookup resolves any city or IANA zone name to its local time, UTC offset, and calendar date. Responses include 12-hour and 24-hour clocks plus the minute offset from GMT.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_timezonelookup'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_timezonelookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_timezonelookup'

# Initialize the client
client = APIVerve::Timezonelookup::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ city: "Harare" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ city: "Harare" })
  puts response["data"]
rescue APIVerve::Timezonelookup::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Timezonelookup::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Timezonelookup::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "timezone": "Africa/Harare",
    "timezone_offset": 120,
    "date": "2025-12-17",
    "time": "00:30",
    "time24": "00:30:23",
    "time12": "12:30:23 AM",
    "day": "Wednesday",
    "month": "December",
    "year": "2025",
    "unix": "1765924223",
    "dst": false,
    "dst_start": "2025-12-17 00:30:23",
    "dst_end": "2025-12-17 00:30:23",
    "dst_name": "CAT"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/timezonelookup?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/timezonelookup?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/timezonelookup?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
