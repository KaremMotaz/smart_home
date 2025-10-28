import 'dart:convert';
import '../helpers/extensions.dart';
import '../models/user_data_response.dart';
import '../services/cache_helper.dart';
import '../helpers/constants.dart';

UserDataResponse? getUser() {
  final jsonString = CacheHelper.getString(key: kUserData);
  if (jsonString.isNullOrEmpty()) {
    return null;
  }
  try {
    final Map<String, dynamic> jsonMap = jsonDecode(jsonString!);
    return UserDataResponse.fromJson(jsonMap);
  } catch (e) {
    return null;
  }
}

Future<void> saveUser({required UserDataResponse userDataResponse}) async {
  final jsonString = jsonEncode(userDataResponse.toJson());
  await CacheHelper.set(key: kUserData, value: jsonString);
}
