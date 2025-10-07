import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/features/auth/data/biometric_repo.dart';
import 'biometric_state.dart';

class BiometricCubit extends Cubit<BiometricState> {
  final BiometricRepo biometricRepo;

  BiometricCubit({required this.biometricRepo})
    : super(BiometricInitialState());

  Future<void> authenticate() async {
    emit(BiometricLoadingState());

    try {
      final canCheck = await biometricRepo.canCheckBiometrics();
      if (!canCheck) {
        emit(BiometricFailureState("Device does not support biometrics."));
        return;
      }

      final available = await biometricRepo.getAvailableBiometrics();
      final authenticated = available.isNotEmpty
          ? await biometricRepo.authenticateWithBiometrics(available)
          : await biometricRepo.authenticateWithPIN();

      authenticated
          ? emit(BiometricSuccessState())
          : emit(BiometricFailureState("Authentication failed."));
    } catch (e) {
      emit(BiometricFailureState("Error: $e"));
    }
  }
}
