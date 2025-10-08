import 'package:get_it/get_it.dart';
import 'package:local_auth/local_auth.dart';
import '../../features/auth/data/biometric_repo.dart';
import '../../features/auth/manager/biometric_cubit/biometric_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // AuthRepo
  getIt.registerLazySingleton<LocalAuthentication>(() => LocalAuthentication());
  getIt.registerLazySingleton<BiometricRepo>(
    () => BiometricRepo(auth: getIt<LocalAuthentication>()),
  );
  getIt.registerLazySingleton<BiometricCubit>(
    () => BiometricCubit(biometricRepo: getIt<BiometricRepo>()),
  );
  
}
