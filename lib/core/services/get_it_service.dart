import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:local_auth/local_auth.dart';
import 'package:smart_home/features/domain/data/repos/add_domain_repo.dart';
import 'package:smart_home/features/domain/data/services/domain_service.dart';
import '../networking/dio_factory.dart';
import '../../features/auth/data/repos/login_repo.dart';
import '../../features/auth/data/repos/register_repo.dart';
import '../../features/auth/data/services/auth_service.dart';
import '../../features/auth/data/repos/biometric_repo.dart';
import '../../features/auth/manager/biometric_cubit/biometric_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<DioFactory>(() => DioFactory());

  getIt.registerLazySingleton<Dio>(() => getIt<DioFactory>().dio);

  // AuthRepo
  getIt.registerLazySingleton<LocalAuthentication>(() => LocalAuthentication());
  getIt.registerLazySingleton<BiometricRepo>(
    () => BiometricRepo(auth: getIt<LocalAuthentication>()),
  );
  getIt.registerLazySingleton<BiometricCubit>(
    () => BiometricCubit(biometricRepo: getIt<BiometricRepo>()),
  );
  getIt.registerLazySingleton<AuthService>(() => AuthService(getIt.get()));

  getIt.registerLazySingleton<RegisterRepo>(
    () => RegisterRepo(authService: getIt.get()),
  );
  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepo(authService: getIt.get()),
  );

  getIt.registerLazySingleton<DomainService>(() => DomainService(getIt.get()));
  getIt.registerLazySingleton<AddDomainRepo>(
    () => AddDomainRepo(domainService: getIt.get()),
  );
}
