import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:local_auth/local_auth.dart';
import 'package:smart_home/core/services/local_cache_service.dart';
import 'package:smart_home/features/clients/data/repos/create_client_repo.dart';
import 'package:smart_home/features/clients/data/services/client_service.dart';
import 'package:smart_home/features/devices/data/repos/provision_client_repo.dart';
import 'package:smart_home/features/devices/data/services/provision_service.dart';
import 'package:smart_home/features/domains/data/models/get_all_domains_response.dart';
import 'package:smart_home/features/domains/data/repos/update_domain_repo.dart';
import 'package:smart_home/features/domains/data/services/domains_local_data_source.dart';
import '../manager/user_cubit/user_cubit.dart';
import '../../features/settings/data/repos/profile_repo.dart';
import '../../features/settings/data/repos/settings_repo.dart';
import '../../features/settings/data/services/settings_service.dart';
import '../manager/user_data_cubit/user_data_cubit.dart';
import '../networking/api_service.dart';
import '../repos/user_data_repo.dart';
import '../../features/domains/data/repos/create_domain_repo.dart';
import '../../features/domains/data/repos/get_all_domains_repo.dart';
import '../../features/domains/data/services/domain_service.dart';
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
  getIt.registerFactory<BiometricCubit>(
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
  getIt.registerLazySingleton<CreateDomainRepo>(
    () => CreateDomainRepo(domainService: getIt.get()),
  );
  getIt.registerLazySingleton<LocalCacheService<GetAllDomainsResponse>>(
    () => LocalCacheService<GetAllDomainsResponse>(),
  );
  getIt.registerLazySingleton<DomainsLocalDataSource>(
    () => DomainsLocalDataSource(cache: getIt.get()),
  );
  getIt.registerLazySingleton<GetAllDomainsRepo>(
    () => GetAllDomainsRepo(
      domainService: getIt.get(),
      domainsLocalDataSource: getIt.get(),
    ),
  );
  getIt.registerLazySingleton<UpdateDomainRepo>(
    () => UpdateDomainRepo(domainService: getIt.get()),
  );

  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt.get()));

  getIt.registerLazySingleton<UserCubit>(() => UserCubit());

  getIt.registerLazySingleton<UserDataRepo>(
    () => UserDataRepo(apiService: getIt.get()),
  );
  getIt.registerFactory<UserDataCubit>(
    () => UserDataCubit(userDataRepo: getIt.get(), userCubit: getIt.get()),
  );

  getIt.registerLazySingleton<SettingsService>(
    () => SettingsService(getIt.get()),
  );
  getIt.registerLazySingleton<ProfileRepo>(
    () => ProfileRepo(settingsService: getIt.get(), userCubit: getIt.get()),
  );

  getIt.registerLazySingleton<SettingsRepo>(
    () => SettingsRepo(settingsService: getIt.get()),
  );

  getIt.registerLazySingleton<ProvisionService>(
    () => ProvisionService(getIt.get()),
  );
  getIt.registerLazySingleton<ProvisionClientRepo>(
    () => ProvisionClientRepo(provisionService: getIt.get()),
  );

  getIt.registerLazySingleton<ClientService>(() => ClientService(getIt.get()));
  getIt.registerLazySingleton<CreateClientRepo>(
    () => CreateClientRepo(clientService: getIt.get()),
  );
}
