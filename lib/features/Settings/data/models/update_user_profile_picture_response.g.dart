// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_profile_picture_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserProfilePictureResponse _$UpdateUserProfilePictureResponseFromJson(
  Map<String, dynamic> json,
) => UpdateUserProfilePictureResponse(
  id: json['id'] as String,
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String,
  email: json['email'] as String,
  credentials: Credentials.fromJson(
    json['credentials'] as Map<String, dynamic>,
  ),
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  metadata: json['metadata'] as Map<String, dynamic>,
  profilePicture: json['profile_picture'] as String,
  status: json['status'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$UpdateUserProfilePictureResponseToJson(
  UpdateUserProfilePictureResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'email': instance.email,
  'credentials': instance.credentials.toJson(),
  'tags': instance.tags,
  'metadata': instance.metadata,
  'profile_picture': instance.profilePicture,
  'status': instance.status,
  'updated_at': instance.updatedAt,
};

Credentials _$CredentialsFromJson(Map<String, dynamic> json) =>
    Credentials(username: json['username'] as String);

Map<String, dynamic> _$CredentialsToJson(Credentials instance) =>
    <String, dynamic>{'username': instance.username};
