# Timezone Lookup API - PHP Package

Timezone Lookup resolves any city or IANA zone name to its local time, UTC offset, and calendar date. Responses include 12-hour and 24-hour clocks plus the minute offset from GMT.

## Installation

Install via Composer:

```bash
composer require apiverve/timezonelookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Timezonelookup\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['city' => 'Harare']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Timezonelookup\Client;
use APIVerve\Timezonelookup\Exceptions\APIException;
use APIVerve\Timezonelookup\Exceptions\ValidationException;

try {
    $response = $client->execute(['city' => 'Harare']);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/timezonelookup?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/timezonelookup?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/timezonelookup?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
