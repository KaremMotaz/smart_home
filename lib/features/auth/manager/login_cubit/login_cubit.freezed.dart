// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState()';
}


}

/// @nodoc
class $LoginStateCopyWith<$Res>  {
$LoginStateCopyWith(LoginState _, $Res Function(LoginState) __);
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoginInitial value)?  loginInitial,TResult Function( _LoginLoading value)?  loginLoading,TResult Function( _LoginSuccess value)?  loginSuccess,TResult Function( _LoginFailure value)?  loginFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginInitial() when loginInitial != null:
return loginInitial(_that);case _LoginLoading() when loginLoading != null:
return loginLoading(_that);case _LoginSuccess() when loginSuccess != null:
return loginSuccess(_that);case _LoginFailure() when loginFailure != null:
return loginFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoginInitial value)  loginInitial,required TResult Function( _LoginLoading value)  loginLoading,required TResult Function( _LoginSuccess value)  loginSuccess,required TResult Function( _LoginFailure value)  loginFailure,}){
final _that = this;
switch (_that) {
case _LoginInitial():
return loginInitial(_that);case _LoginLoading():
return loginLoading(_that);case _LoginSuccess():
return loginSuccess(_that);case _LoginFailure():
return loginFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoginInitial value)?  loginInitial,TResult? Function( _LoginLoading value)?  loginLoading,TResult? Function( _LoginSuccess value)?  loginSuccess,TResult? Function( _LoginFailure value)?  loginFailure,}){
final _that = this;
switch (_that) {
case _LoginInitial() when loginInitial != null:
return loginInitial(_that);case _LoginLoading() when loginLoading != null:
return loginLoading(_that);case _LoginSuccess() when loginSuccess != null:
return loginSuccess(_that);case _LoginFailure() when loginFailure != null:
return loginFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loginInitial,TResult Function()?  loginLoading,TResult Function()?  loginSuccess,TResult Function( ApiErrorModel apiErrorModel)?  loginFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginInitial() when loginInitial != null:
return loginInitial();case _LoginLoading() when loginLoading != null:
return loginLoading();case _LoginSuccess() when loginSuccess != null:
return loginSuccess();case _LoginFailure() when loginFailure != null:
return loginFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loginInitial,required TResult Function()  loginLoading,required TResult Function()  loginSuccess,required TResult Function( ApiErrorModel apiErrorModel)  loginFailure,}) {final _that = this;
switch (_that) {
case _LoginInitial():
return loginInitial();case _LoginLoading():
return loginLoading();case _LoginSuccess():
return loginSuccess();case _LoginFailure():
return loginFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loginInitial,TResult? Function()?  loginLoading,TResult? Function()?  loginSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  loginFailure,}) {final _that = this;
switch (_that) {
case _LoginInitial() when loginInitial != null:
return loginInitial();case _LoginLoading() when loginLoading != null:
return loginLoading();case _LoginSuccess() when loginSuccess != null:
return loginSuccess();case _LoginFailure() when loginFailure != null:
return loginFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _LoginInitial implements LoginState {
  const _LoginInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.loginInitial()';
}


}




/// @nodoc


class _LoginLoading implements LoginState {
  const _LoginLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.loginLoading()';
}


}




/// @nodoc


class _LoginSuccess implements LoginState {
  const _LoginSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.loginSuccess()';
}


}




/// @nodoc


class _LoginFailure implements LoginState {
  const _LoginFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginFailureCopyWith<_LoginFailure> get copyWith => __$LoginFailureCopyWithImpl<_LoginFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'LoginState.loginFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class _$LoginFailureCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginFailureCopyWith(_LoginFailure value, $Res Function(_LoginFailure) _then) = __$LoginFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class __$LoginFailureCopyWithImpl<$Res>
    implements _$LoginFailureCopyWith<$Res> {
  __$LoginFailureCopyWithImpl(this._self, this._then);

  final _LoginFailure _self;
  final $Res Function(_LoginFailure) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(_LoginFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
