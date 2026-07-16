# Disposable Email Checker API - PHP Package

Email Disposable Checker is a simple tool for checking if an email address is disposable. It returns if the email address is disposable or not.

## Installation

Install via Composer:

```bash
composer require apiverve/emaildisposablechecker
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Emaildisposablechecker\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['email' => 'support@myspace.com']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Emaildisposablechecker\Client;
use APIVerve\Emaildisposablechecker\Exceptions\APIException;
use APIVerve\Emaildisposablechecker\Exceptions\ValidationException;

try {
    $response = $client->execute(['email' => 'support@myspace.com']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/emaildisposablechecker?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://emaildisposablechecker.apiverve.com?utm_source=php&utm_medium=readme](https://emaildisposablechecker.apiverve.com?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
