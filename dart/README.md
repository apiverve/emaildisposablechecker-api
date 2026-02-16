# Disposable Email Checker API - Dart/Flutter Client

Email Disposable Checker is a simple tool for checking if an email address is disposable. It returns if the email address is disposable or not.

[![pub package](https://img.shields.io/pub/v/apiverve_emaildisposablechecker.svg)](https://pub.dev/packages/apiverve_emaildisposablechecker)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Disposable Email Checker API](https://emaildisposablechecker.apiverve.com?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_emaildisposablechecker: ^1.1.14
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
      'email': 'support@myspace.com'
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
    "domain": "myspace.com"
  }
}
```

## API Reference

- **API Home:** [Disposable Email Checker API](https://emaildisposablechecker.apiverve.com?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/emaildisposablechecker](https://docs.apiverve.com/ref/emaildisposablechecker?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
