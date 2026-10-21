# Disposable Email Checker API - Ruby Gem

Disposable Email Checker is a disposable email detection API that tests whether an email address belongs to a disposable or temp mail provider. Pass any email to receive its domain and a true or false flag showing if it is temporary.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_emaildisposablechecker'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_emaildisposablechecker
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_emaildisposablechecker'

# Initialize the client
client = APIVerve::Emaildisposablechecker::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ email: "support@myspace.com" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ email: "support@myspace.com" })
  puts response["data"]
rescue APIVerve::Emaildisposablechecker::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Emaildisposablechecker::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Emaildisposablechecker::Client.new(
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
    "isDisposable": false,
    "email": "support@myspace.com",
    "domain": "myspace.com"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/emaildisposablechecker?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/emaildisposablechecker?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/emaildisposablechecker?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
