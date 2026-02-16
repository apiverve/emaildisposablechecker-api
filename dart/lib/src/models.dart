/// Response models for the Disposable Email Checker API.

/// API Response wrapper.
class EmaildisposablecheckerResponse {
  final String status;
  final dynamic error;
  final EmaildisposablecheckerData? data;

  EmaildisposablecheckerResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory EmaildisposablecheckerResponse.fromJson(Map<String, dynamic> json) => EmaildisposablecheckerResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? EmaildisposablecheckerData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Disposable Email Checker API.

class EmaildisposablecheckerData {
  bool? isDisposable;
  String? email;
  String? domain;

  EmaildisposablecheckerData({
    this.isDisposable,
    this.email,
    this.domain,
  });

  factory EmaildisposablecheckerData.fromJson(Map<String, dynamic> json) => EmaildisposablecheckerData(
      isDisposable: json['isDisposable'],
      email: json['email'],
      domain: json['domain'],
    );
}

class EmaildisposablecheckerRequest {
  String email;

  EmaildisposablecheckerRequest({
    required this.email,
  });

  Map<String, dynamic> toJson() => {
      'email': email,
    };
}
