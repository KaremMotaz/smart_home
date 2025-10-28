import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'user_data_response.g.dart';

@JsonSerializable(explicitToJson: true)
class UserDataResponse {
  final String id;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  final Map<String, dynamic>? metadata;
  final String status;
  final Credentials credentials;
  final String email;
  final String role;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  const UserDataResponse({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.credentials,
    required this.metadata,
    required this.role,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UserDataResponse.fromJson(Map<String, dynamic> json) {
    try {
      return _$UserDataResponseFromJson(json);
    } catch (e) {
      final fixedJson = _sanitizeJson(json);
      return _$UserDataResponseFromJson(fixedJson);
    }
  }

  static Map<String, dynamic> _sanitizeJson(Map<String, dynamic> json) {
    var raw = json.toString();

    raw = raw
        .replaceAllMapped(RegExp(r'phoneNumber:\s*\+?\d+'), (m) {
          final number = m[0]!.split(':')[1].trim();
          return '"phoneNumber": "$number"';
        })
        .replaceAllMapped(RegExp(r'username:\s*[A-Za-z0-9_]+'), (m) {
          final username = m[0]!.split(':')[1].trim();
          return '"username": "$username"';
        });

    return Map<String, dynamic>.from(jsonDecode(raw));
  }

  Map<String, dynamic> toJson() => _$UserDataResponseToJson(this);
}

@JsonSerializable()
class Credentials {
  final String? username;

  const Credentials({required this.username});

  factory Credentials.fromJson(Map<String, dynamic> json) {
    return _$CredentialsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CredentialsToJson(this);
}
