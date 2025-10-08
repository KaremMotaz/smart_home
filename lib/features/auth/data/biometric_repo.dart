import 'package:local_auth/local_auth.dart';

class BiometricRepo {
  final LocalAuthentication auth;

  BiometricRepo({required this.auth});

  Future<bool> canCheckBiometrics() {
    return auth.canCheckBiometrics;
  }

  Future<bool> isDeviceSupported() {
    return auth.isDeviceSupported();
  }

  Future<List<BiometricType>> getAvailableBiometrics() {
    return auth.getAvailableBiometrics();
  }

  Future<bool> authenticateWithBiometrics(List<BiometricType> available) {
    final reason = available.contains(BiometricType.fingerprint)
        ? 'Please use your fingerprint to log in.'
        : 'Please use Face ID to log in.';
    return auth.authenticate(
      localizedReason: reason,
      options: const AuthenticationOptions(
        stickyAuth: true,
        useErrorDialogs: true,
        biometricOnly: true,
      ),
    );
  }

  Future<bool> authenticateWithPIN() {
    return auth.authenticate(
      localizedReason: 'Please enter your device PIN to log in.',
      options: const AuthenticationOptions(
        stickyAuth: true,
        useErrorDialogs: true,
        biometricOnly: false,
      ),
    );
  }
}
