import 'package:equatable/equatable.dart';

abstract class BiometricState extends Equatable {
  @override
  List<Object?> get props => [];
}

class BiometricInitialState extends BiometricState {}

class BiometricLoadingState extends BiometricState {}

class BiometricSuccessState extends BiometricState {}

class BiometricFailureState extends BiometricState {
  final String message;
  BiometricFailureState(this.message);

  @override
  List<Object?> get props => [message];
}
