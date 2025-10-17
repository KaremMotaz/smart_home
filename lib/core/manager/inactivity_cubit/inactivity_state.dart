part of 'inactivity_cubit.dart';

@freezed
class InactivityState with _$InactivityState {
  const factory InactivityState.unlocked() = InactivityUnlocked;
  const factory InactivityState.locked() = InactivityLocked;
}

extension InactivityStateX on InactivityState {
  bool get isLocked => maybeWhen(locked: () => true, orElse: () => false);
}
