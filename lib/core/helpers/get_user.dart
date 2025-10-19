import 'dart:convert';
import 'package:smart_home/core/models/user_data_response.dart';
import '../services/cache_helper.dart';
import 'constants.dart';

UserDataResponse getUser() {
  String jsonString = CacheHelper.getString(key: kUserData) ?? '';
  UserDataResponse userDataResponse = UserDataResponse.fromJson(
    jsonDecode(jsonString),
  );
  return userDataResponse;
}

Future<void> saveUser({required UserDataResponse userDataResponse}) async {
  final jsonString = jsonEncode(userDataResponse.toJson());
  await CacheHelper.set(key: kUserData, value: jsonString);
}
