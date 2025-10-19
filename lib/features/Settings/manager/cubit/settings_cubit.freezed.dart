// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsState()';
}


}

/// @nodoc
class $SettingsStateCopyWith<$Res>  {
$SettingsStateCopyWith(SettingsState _, $Res Function(SettingsState) __);
}


/// Adds pattern-matching-related methods to [SettingsState].
extension SettingsStatePatterns on SettingsState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SettingsInitial value)?  settingsInitial,TResult Function( SettingsLoading value)?  settingsLoading,TResult Function( SettingsSuccess value)?  settingsSuccess,TResult Function( SettingsFailure value)?  settingsFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsInitial() when settingsInitial != null:
return settingsInitial(_that);case SettingsLoading() when settingsLoading != null:
return settingsLoading(_that);case SettingsSuccess() when settingsSuccess != null:
return settingsSuccess(_that);case SettingsFailure() when settingsFailure != null:
return settingsFailure(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SettingsInitial value)  settingsInitial,required TResult Function( SettingsLoading value)  settingsLoading,required TResult Function( SettingsSuccess value)  settingsSuccess,required TResult Function( SettingsFailure value)  settingsFailure,}){
final _that = this;
switch (_that) {
case _SettingsInitial():
return settingsInitial(_that);case SettingsLoading():
return settingsLoading(_that);case SettingsSuccess():
return settingsSuccess(_that);case SettingsFailure():
return settingsFailure(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SettingsInitial value)?  settingsInitial,TResult? Function( SettingsLoading value)?  settingsLoading,TResult? Function( SettingsSuccess value)?  settingsSuccess,TResult? Function( SettingsFailure value)?  settingsFailure,}){
final _that = this;
switch (_that) {
case _SettingsInitial() when settingsInitial != null:
return settingsInitial(_that);case SettingsLoading() when settingsLoading != null:
return settingsLoading(_that);case SettingsSuccess() when settingsSuccess != null:
return settingsSuccess(_that);case SettingsFailure() when settingsFailure != null:
return settingsFailure(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  settingsInitial,TResult Function()?  settingsLoading,TResult Function()?  settingsSuccess,TResult Function( ApiErrorModel apiErrorModel)?  settingsFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsInitial() when settingsInitial != null:
return settingsInitial();case SettingsLoading() when settingsLoading != null:
return settingsLoading();case SettingsSuccess() when settingsSuccess != null:
return settingsSuccess();case SettingsFailure() when settingsFailure != null:
return settingsFailure(_that.apiErrorModel);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  settingsInitial,required TResult Function()  settingsLoading,required TResult Function()  settingsSuccess,required TResult Function( ApiErrorModel apiErrorModel)  settingsFailure,}) {final _that = this;
switch (_that) {
case _SettingsInitial():
return settingsInitial();case SettingsLoading():
return settingsLoading();case SettingsSuccess():
return settingsSuccess();case SettingsFailure():
return settingsFailure(_that.apiErrorModel);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  settingsInitial,TResult? Function()?  settingsLoading,TResult? Function()?  settingsSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  settingsFailure,}) {final _that = this;
switch (_that) {
case _SettingsInitial() when settingsInitial != null:
return settingsInitial();case SettingsLoading() when settingsLoading != null:
return settingsLoading();case SettingsSuccess() when settingsSuccess != null:
return settingsSuccess();case SettingsFailure() when settingsFailure != null:
return settingsFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _SettingsInitial implements SettingsState {
  const _SettingsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsState.settingsInitial()';
}


}




/// @nodoc


class SettingsLoading implements SettingsState {
  const SettingsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsState.settingsLoading()';
}


}




/// @nodoc


class SettingsSuccess implements SettingsState {
  const SettingsSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsState.settingsSuccess()';
}


}




/// @nodoc


class SettingsFailure implements SettingsState {
  const SettingsFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsFailureCopyWith<SettingsFailure> get copyWith => _$SettingsFailureCopyWithImpl<SettingsFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'SettingsState.settingsFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $SettingsFailureCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory $SettingsFailureCopyWith(SettingsFailure value, $Res Function(SettingsFailure) _then) = _$SettingsFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$SettingsFailureCopyWithImpl<$Res>
    implements $SettingsFailureCopyWith<$Res> {
  _$SettingsFailureCopyWithImpl(this._self, this._then);

  final SettingsFailure _self;
  final $Res Function(SettingsFailure) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(SettingsFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
