import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_auth/local_auth.dart';
import 'package:smart_home/features/auth/data/biometric_repo.dart';
import 'biometric_state.dart';

class BiometricCubit extends Cubit<BiometricState> {
  final BiometricRepo biometricRepo;

  BiometricCubit({required this.biometricRepo})
    : super(BiometricInitialState());

  Future<void> authenticate() async {
    if (isClosed) return;
    emit(BiometricLoadingState());

    final canCheck = await biometricRepo.canCheckBiometrics();
    final isDeviceSupported = await biometricRepo.isDeviceSupported();

    if (!isDeviceSupported) {
      if (isClosed) return;
      emit(
        BiometricFailureState(
          "Biometric authentication is not supported on this device.",
        ),
      );
      return;
    }

    if (!canCheck) {
      if (isClosed) return;
      emit(
        BiometricFailureState(
          "No biometric data found or not set up on this device.",
        ),
      );
      return;
    }

    final List<BiometricType> available = await biometricRepo
        .getAvailableBiometrics();

    final bool authenticated = available.isNotEmpty
        ? await biometricRepo.authenticateWithBiometrics(available)
        : await biometricRepo.authenticateWithPIN();

    if (isClosed) return;
    authenticated
        ? emit(BiometricSuccessState())
        : emit(BiometricFailureState("Authentication failed."));
  }
}
