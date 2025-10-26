import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/functions/get_user.dart';
import 'package:smart_home/core/models/user_data_response.dart';

class UserCubit extends Cubit<UserDataResponse?> {
  UserCubit() : super(getUser());
  void updateUser({required UserDataResponse userDataResponse}) async {
    await saveUser(userDataResponse: userDataResponse);
    emit(userDataResponse);
  }
}
