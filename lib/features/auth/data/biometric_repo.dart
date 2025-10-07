import 'package:local_auth/local_auth.dart';

class BiometricRepo{
  final LocalAuthentication auth;

  BiometricRepo(this.auth);

  Future<bool> canCheckBiometrics() => auth.canCheckBiometrics;

  
  Future<List<BiometricType>> getAvailableBiometrics() => auth.getAvailableBiometrics();

  Future<bool> authenticateWithBiometrics(List<BiometricType> available) {
    final reason = available.contains(BiometricType.face)
        ? 'Please use Face ID to log in.'
        : 'Please use your fingerprint to log in.';
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
