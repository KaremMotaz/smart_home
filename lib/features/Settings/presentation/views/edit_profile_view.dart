import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/manager/user_cubit/user_cubit.dart';
import 'package:smart_home/core/services/get_it_service.dart';
import 'package:smart_home/core/theming/app_colors.dart';
import 'package:smart_home/features/Settings/data/repos/profile_repo.dart';
import 'package:smart_home/features/Settings/manager/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:smart_home/features/Settings/presentation/helpers/edit_profile_listener_factory.dart';
import 'package:smart_home/features/Settings/presentation/widgets/edit_profile/edit_profile_listener_wrapper.dart';

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
