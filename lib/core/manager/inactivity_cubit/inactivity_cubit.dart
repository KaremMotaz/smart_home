import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/core/routing/routes.dart';
part 'inactivity_state.dart';
part 'inactivity_cubit.freezed.dart';

class InactivityCubit extends Cubit<InactivityState> {
  Timer? _timer;
  static const inactivityDuration = Duration(minutes: 10);
  String? _lastVisitedRoute;
  InactivityCubit() : super(const InactivityState.unlocked()) {
    _startTimer();
  }
  void _startTimer() {
    _timer?.cancel();
    _timer = Timer(inactivityDuration, _onTimeout);
  }

  void _onTimeout() {
    emit(const InactivityState.locked());
  }

  void resetTimer({String? currentRoute}) {
    if (currentRoute != null) {
      _lastVisitedRoute = currentRoute;
    }
    if (!state.isLocked) {
      _startTimer();
    }
  }

  void unlock() {
    emit(const InactivityState.unlocked());
    _startTimer();
  }

  String get lastVisitedRoute => _lastVisitedRoute ?? Routes.homeView;
  
  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
