import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../manager/register_cubit/register_cubit.dart';

class PhoneField extends StatefulWidget {
  const PhoneField({super.key});

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  final TextEditingController _phoneNumberController = TextEditingController();
  PhoneNumber initialNumber = PhoneNumber(isoCode: 'EG');

  bool _isValid = false;
  String? _fullNumber;

  @override
  void dispose() {
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
      cursorColor: AppColors.darkerBlue,
      textFieldController: _phoneNumberController,
      initialValue: initialNumber,
      formatInput: true,
      ignoreBlank: false,
      autoValidateMode: AutovalidateMode.onUserInteraction,

      selectorConfig: const SelectorConfig(
        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
        leadingPadding: 20,
        trailingSpace: false,
        useBottomSheetSafeArea: true,
        setSelectorButtonAsPrefixIcon: true,
      ),
      searchBoxDecoration: InputDecoration(
        focusedBorder: buildOutLineInputBorder(
          borderColor: AppColors.lightGrey,
        ),
        enabledBorder: buildOutLineInputBorder(
          borderColor: AppColors.lightGrey,
        ),
        prefixIcon: const Icon(Icons.search, color: AppColors.grey),
        filled: true,
        fillColor: Colors.white,
      ),
      inputDecoration: InputDecoration(
        hintText: 'Phone Number',
        focusedBorder: buildOutLineInputBorder(
          borderColor: AppColors.lightGrey,
        ),
        enabledBorder: buildOutLineInputBorder(
          borderColor: AppColors.lightGrey,
        ),
        errorBorder: buildOutLineInputBorder(borderColor: AppColors.darkRed),
        focusedErrorBorder: buildOutLineInputBorder(
          borderColor: AppColors.darkRed,
        ),
        filled: true,
        fillColor: AppColors.formFieldGrey,
      ),

      onInputChanged: (PhoneNumber number) {
        _fullNumber = number.phoneNumber;
      },

      onInputValidated: (bool isValid) {
        setState(() {
          _isValid = isValid;
        });

        if (isValid && _fullNumber != null) {
          context.read<RegisterCubit>().setPhoneNumber(_fullNumber!);
        } else {
          context.read<RegisterCubit>().setPhoneNumber('');
        }
      },

      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter your phone number";
        }
        if (!_isValid) {
          return "Please enter a valid phone number";
        }
        return null;
      },

      keyboardType: const TextInputType.numberWithOptions(
        signed: true,
        decimal: false,
      ),
    );
  }
}

OutlineInputBorder buildOutLineInputBorder({required Color borderColor}) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: borderColor, width: 1.3),
    borderRadius: BorderRadius.circular(40),
  );
}
