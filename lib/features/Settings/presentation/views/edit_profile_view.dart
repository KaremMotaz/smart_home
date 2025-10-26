import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/manager/user_cubit/user_cubit.dart';
import '../../../../core/services/get_it_service.dart';
import '../../../../core/theming/app_colors.dart';
import '../../data/repos/profile_repo.dart';
import '../../manager/edit_profile_cubit/edit_profile_cubit.dart';
import '../helpers/edit_profile_listener_factory.dart';
import '../widgets/edit_profile/edit_profile_listener_wrapper.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EditProfileCubit>(
      create: (context) => EditProfileCubit(
        profileRepo: getIt.get<ProfileRepo>(),
        userCubit: getIt.get<UserCubit>(),
      ),
      child: Scaffold(
        backgroundColor: AppColors.orange2,
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: EditProfileListenerWrapper(
            fieldName: title.toLowerCase(),
            child: EditProfileViewBodyFactory.create(title),
          ),
        ),
      ),
    );
  }
}
