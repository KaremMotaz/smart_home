// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserDataState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDataState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserDataState()';
}


}

/// @nodoc
class $UserDataStateCopyWith<$Res>  {
$UserDataStateCopyWith(UserDataState _, $Res Function(UserDataState) __);
}


/// Adds pattern-matching-related methods to [UserDataState].
extension UserDataStatePatterns on UserDataState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UserDataLoading value)?  userDataLoading,TResult Function( UserDataSuccess value)?  userDataSuccess,TResult Function( UserDataFailure value)?  userDataFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UserDataLoading() when userDataLoading != null:
return userDataLoading(_that);case UserDataSuccess() when userDataSuccess != null:
return userDataSuccess(_that);case UserDataFailure() when userDataFailure != null:
return userDataFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UserDataLoading value)  userDataLoading,required TResult Function( UserDataSuccess value)  userDataSuccess,required TResult Function( UserDataFailure value)  userDataFailure,}){
final _that = this;
switch (_that) {
case UserDataLoading():
return userDataLoading(_that);case UserDataSuccess():
return userDataSuccess(_that);case UserDataFailure():
return userDataFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UserDataLoading value)?  userDataLoading,TResult? Function( UserDataSuccess value)?  userDataSuccess,TResult? Function( UserDataFailure value)?  userDataFailure,}){
final _that = this;
switch (_that) {
case UserDataLoading() when userDataLoading != null:
return userDataLoading(_that);case UserDataSuccess() when userDataSuccess != null:
return userDataSuccess(_that);case UserDataFailure() when userDataFailure != null:
return userDataFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  userDataLoading,TResult Function( UserDataResponse userDataResponse)?  userDataSuccess,TResult Function( ApiErrorModel apiErrorModel)?  userDataFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UserDataLoading() when userDataLoading != null:
return userDataLoading();case UserDataSuccess() when userDataSuccess != null:
return userDataSuccess(_that.userDataResponse);case UserDataFailure() when userDataFailure != null:
return userDataFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  userDataLoading,required TResult Function( UserDataResponse userDataResponse)  userDataSuccess,required TResult Function( ApiErrorModel apiErrorModel)  userDataFailure,}) {final _that = this;
switch (_that) {
case UserDataLoading():
return userDataLoading();case UserDataSuccess():
return userDataSuccess(_that.userDataResponse);case UserDataFailure():
return userDataFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  userDataLoading,TResult? Function( UserDataResponse userDataResponse)?  userDataSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  userDataFailure,}) {final _that = this;
switch (_that) {
case UserDataLoading() when userDataLoading != null:
return userDataLoading();case UserDataSuccess() when userDataSuccess != null:
return userDataSuccess(_that.userDataResponse);case UserDataFailure() when userDataFailure != null:
return userDataFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class UserDataLoading implements UserDataState {
  const UserDataLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDataLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserDataState.userDataLoading()';
}


}




/// @nodoc


class UserDataSuccess implements UserDataState {
  const UserDataSuccess({required this.userDataResponse});
  

 final  UserDataResponse userDataResponse;

/// Create a copy of UserDataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDataSuccessCopyWith<UserDataSuccess> get copyWith => _$UserDataSuccessCopyWithImpl<UserDataSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDataSuccess&&(identical(other.userDataResponse, userDataResponse) || other.userDataResponse == userDataResponse));
}


@override
int get hashCode => Object.hash(runtimeType,userDataResponse);

@override
String toString() {
  return 'UserDataState.userDataSuccess(userDataResponse: $userDataResponse)';
}


}

/// @nodoc
abstract mixin class $UserDataSuccessCopyWith<$Res> implements $UserDataStateCopyWith<$Res> {
  factory $UserDataSuccessCopyWith(UserDataSuccess value, $Res Function(UserDataSuccess) _then) = _$UserDataSuccessCopyWithImpl;
@useResult
$Res call({
 UserDataResponse userDataResponse
});




}
/// @nodoc
class _$UserDataSuccessCopyWithImpl<$Res>
    implements $UserDataSuccessCopyWith<$Res> {
  _$UserDataSuccessCopyWithImpl(this._self, this._then);

  final UserDataSuccess _self;
  final $Res Function(UserDataSuccess) _then;

/// Create a copy of UserDataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userDataResponse = null,}) {
  return _then(UserDataSuccess(
userDataResponse: null == userDataResponse ? _self.userDataResponse : userDataResponse // ignore: cast_nullable_to_non_nullable
as UserDataResponse,
  ));
}


}

/// @nodoc


class UserDataFailure implements UserDataState {
  const UserDataFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of UserDataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDataFailureCopyWith<UserDataFailure> get copyWith => _$UserDataFailureCopyWithImpl<UserDataFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDataFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'UserDataState.userDataFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $UserDataFailureCopyWith<$Res> implements $UserDataStateCopyWith<$Res> {
  factory $UserDataFailureCopyWith(UserDataFailure value, $Res Function(UserDataFailure) _then) = _$UserDataFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$UserDataFailureCopyWithImpl<$Res>
    implements $UserDataFailureCopyWith<$Res> {
  _$UserDataFailureCopyWithImpl(this._self, this._then);

  final UserDataFailure _self;
  final $Res Function(UserDataFailure) _then;

/// Create a copy of UserDataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(UserDataFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
