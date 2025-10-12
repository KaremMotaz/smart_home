// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState()';
}


}

/// @nodoc
class $RegisterStateCopyWith<$Res>  {
$RegisterStateCopyWith(RegisterState _, $Res Function(RegisterState) __);
}


/// Adds pattern-matching-related methods to [RegisterState].
extension RegisterStatePatterns on RegisterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _RegisterInitial value)?  registerInitial,TResult Function( RegisterLoading value)?  registerLoading,TResult Function( RegisterSuccess value)?  registerSuccess,TResult Function( RegisterFailure value)?  registerFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterInitial() when registerInitial != null:
return registerInitial(_that);case RegisterLoading() when registerLoading != null:
return registerLoading(_that);case RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that);case RegisterFailure() when registerFailure != null:
return registerFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _RegisterInitial value)  registerInitial,required TResult Function( RegisterLoading value)  registerLoading,required TResult Function( RegisterSuccess value)  registerSuccess,required TResult Function( RegisterFailure value)  registerFailure,}){
final _that = this;
switch (_that) {
case _RegisterInitial():
return registerInitial(_that);case RegisterLoading():
return registerLoading(_that);case RegisterSuccess():
return registerSuccess(_that);case RegisterFailure():
return registerFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _RegisterInitial value)?  registerInitial,TResult? Function( RegisterLoading value)?  registerLoading,TResult? Function( RegisterSuccess value)?  registerSuccess,TResult? Function( RegisterFailure value)?  registerFailure,}){
final _that = this;
switch (_that) {
case _RegisterInitial() when registerInitial != null:
return registerInitial(_that);case RegisterLoading() when registerLoading != null:
return registerLoading(_that);case RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that);case RegisterFailure() when registerFailure != null:
return registerFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  registerInitial,TResult Function()?  registerLoading,TResult Function()?  registerSuccess,TResult Function( ApiErrorModel apiErrorModel)?  registerFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterInitial() when registerInitial != null:
return registerInitial();case RegisterLoading() when registerLoading != null:
return registerLoading();case RegisterSuccess() when registerSuccess != null:
return registerSuccess();case RegisterFailure() when registerFailure != null:
return registerFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  registerInitial,required TResult Function()  registerLoading,required TResult Function()  registerSuccess,required TResult Function( ApiErrorModel apiErrorModel)  registerFailure,}) {final _that = this;
switch (_that) {
case _RegisterInitial():
return registerInitial();case RegisterLoading():
return registerLoading();case RegisterSuccess():
return registerSuccess();case RegisterFailure():
return registerFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  registerInitial,TResult? Function()?  registerLoading,TResult? Function()?  registerSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  registerFailure,}) {final _that = this;
switch (_that) {
case _RegisterInitial() when registerInitial != null:
return registerInitial();case RegisterLoading() when registerLoading != null:
return registerLoading();case RegisterSuccess() when registerSuccess != null:
return registerSuccess();case RegisterFailure() when registerFailure != null:
return registerFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _RegisterInitial implements RegisterState {
  const _RegisterInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState.registerInitial()';
}


}




/// @nodoc


class RegisterLoading implements RegisterState {
  const RegisterLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState.registerLoading()';
}


}




/// @nodoc


class RegisterSuccess implements RegisterState {
  const RegisterSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState.registerSuccess()';
}


}




/// @nodoc


class RegisterFailure implements RegisterState {
  const RegisterFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterFailureCopyWith<RegisterFailure> get copyWith => _$RegisterFailureCopyWithImpl<RegisterFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'RegisterState.registerFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $RegisterFailureCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $RegisterFailureCopyWith(RegisterFailure value, $Res Function(RegisterFailure) _then) = _$RegisterFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$RegisterFailureCopyWithImpl<$Res>
    implements $RegisterFailureCopyWith<$Res> {
  _$RegisterFailureCopyWithImpl(this._self, this._then);

  final RegisterFailure _self;
  final $Res Function(RegisterFailure) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(RegisterFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
