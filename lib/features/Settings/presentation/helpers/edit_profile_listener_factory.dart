import 'package:flutter/material.dart';
import 'package:smart_home/features/Settings/presentation/widgets/edit_profile/edit_first_name_view_body.dart';
import 'package:smart_home/features/Settings/presentation/widgets/edit_profile/edit_last_name_view_body.dart';
import 'package:smart_home/features/Settings/presentation/widgets/edit_profile/edit_email_view_body.dart';
import 'package:smart_home/features/Settings/presentation/widgets/edit_profile/edit_password_view_body.dart';
import 'package:smart_home/features/Settings/presentation/widgets/edit_profile/edit_phone_view_body.dart';

class EditProfileViewBodyFactory {
  static Widget create(String title) {
    switch (title.toLowerCase()) {
      case 'first name':
        return const EditFirstNameViewBody();
      case 'last name':
        return const EditLastNameViewBody();
      case 'email':
        return const EditEmailViewBody();
      case 'phone':
        return const EditPhoneViewBody();
      case 'password':
        return const EditPasswordViewBody();
      default:
        return const Center(child: Text('Invalid edit option'));
    }
  }
}
