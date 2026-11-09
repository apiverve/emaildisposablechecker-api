# Disposable Email Checker API - Dart/Flutter Client

Disposable Email Checker is a disposable email detection API that tests whether an email address belongs to a disposable or temp mail provider. Pass any email to get back the domain parsed from it and a true or false flag showing whether it is temporary. That also makes it a quick way to drop throwaway domains when you derive a company domain from a list of emails.

[![pub package](https://img.shields.io/pub/v/apiverve_emaildisposablechecker.svg)](https://pub.dev/packages/apiverve_emaildisposablechecker)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Disposable Email Checker API](https://apiverve.com/marketplace/emaildisposablechecker?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_emaildisposablechecker: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_emaildisposablechecker/apiverve_emaildisposablechecker.dart';

void main() async {
  final client = EmaildisposablecheckerClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'email': 'support@myspace.com',
      'domain': 'mailinator.com'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "isDisposable": false,
    "email": "support@myspace.com",
    "domain": "myspace.com",
    "isRelay": false,
    "relayService": null,
    "isDisposableMx": false
  }
}
```

## API Reference

- **API Home:** [Disposable Email Checker API](https://apiverve.com/marketplace/emaildisposablechecker?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/emaildisposablechecker](https://docs.apiverve.com/ref/emaildisposablechecker?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
