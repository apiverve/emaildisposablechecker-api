/// Disposable Email Checker API client for Dart/Flutter
///
/// Disposable Email Checker is a disposable email detection API that tests whether an email address belongs to a disposable or temp mail provider. Pass any email to get back the domain parsed from it and a true or false flag showing whether it is temporary. That also makes it a quick way to drop throwaway domains when you derive a company domain from a list of emails.
///
/// For more information, visit: https://apiverve.com/marketplace/emaildisposablechecker?utm_source=dart&utm_medium=referral&utm_content=readme
library apiverve_emaildisposablechecker;

export 'src/client.dart';
export 'src/models.dart';
