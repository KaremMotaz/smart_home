part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.settingsInitial() = _SettingsInitial;
  const factory SettingsState.settingsLoading() = SettingsLoading;
  const factory SettingsState.settingsSuccess() = SettingsSuccess;
  const factory SettingsState.settingsFailure({
    required ApiErrorModel apiErrorModel,
  }) = SettingsFailure;
}
