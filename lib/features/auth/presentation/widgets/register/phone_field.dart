import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../../../../../core/functions/get_user.dart';
import '../../../../../core/theming/app_colors.dart';

class PhoneField<T extends Cubit> extends StatefulWidget {
  const PhoneField({super.key});

  @override
  State<PhoneField<T>> createState() => _PhoneFieldState<T>();
}

class _PhoneFieldState<T extends Cubit> extends State<PhoneField<T>> {
  late final TextEditingController _phoneNumberController;
  PhoneNumber initialNumber = PhoneNumber(isoCode: 'EG');

  @override
  void initState() {
    super.initState();

    final String storedNumber = getUser()?.metadata?.entries.first.value ?? '';

    String localNumber = storedNumber;

    if (storedNumber.startsWith('+')) {
      localNumber = storedNumber.replaceFirst(RegExp(r'^\+\d{1,2}'), '');

      if (!localNumber.startsWith('0')) {
        localNumber = '0$localNumber';
      }
    }

    _phoneNumberController = TextEditingController(text: localNumber);
  }

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
        final cubit = context.read<T>();
        final method = cubit as dynamic;

        if (isValid && _fullNumber != null) {
          method.setPhoneNumber(_fullNumber!);
        } else {
          method.setPhoneNumber('');
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
