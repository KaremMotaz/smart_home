import 'dart:convert';
import '../models/user_data_response.dart';
import '../services/cache_helper.dart';
import 'constants.dart';

UserDataResponse? getUser() {
  final jsonString = CacheHelper.getString(key: kUserData);
  if (jsonString == null || jsonString.isEmpty) {
    return null;
  }
  try {
    final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    return UserDataResponse.fromJson(jsonMap);
  } catch (e) {
    return null;
  }
}

Future<void> saveUser({required dynamic userDataResponse}) async {
  final jsonString = jsonEncode(userDataResponse.toJson());
  await CacheHelper.set(key: kUserData, value: jsonString);
}
