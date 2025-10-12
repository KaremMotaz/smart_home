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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _RegisterInitial value)?  registerInitial,TResult Function( _RegisterLoading value)?  registerLoading,TResult Function( _RegisterSuccess value)?  registerSuccess,TResult Function( _RegisterFailure value)?  registerFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterInitial() when registerInitial != null:
return registerInitial(_that);case _RegisterLoading() when registerLoading != null:
return registerLoading(_that);case _RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that);case _RegisterFailure() when registerFailure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _RegisterInitial value)  registerInitial,required TResult Function( _RegisterLoading value)  registerLoading,required TResult Function( _RegisterSuccess value)  registerSuccess,required TResult Function( _RegisterFailure value)  registerFailure,}){
final _that = this;
switch (_that) {
case _RegisterInitial():
return registerInitial(_that);case _RegisterLoading():
return registerLoading(_that);case _RegisterSuccess():
return registerSuccess(_that);case _RegisterFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _RegisterInitial value)?  registerInitial,TResult? Function( _RegisterLoading value)?  registerLoading,TResult? Function( _RegisterSuccess value)?  registerSuccess,TResult? Function( _RegisterFailure value)?  registerFailure,}){
final _that = this;
switch (_that) {
case _RegisterInitial() when registerInitial != null:
return registerInitial(_that);case _RegisterLoading() when registerLoading != null:
return registerLoading(_that);case _RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that);case _RegisterFailure() when registerFailure != null:
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
return registerInitial();case _RegisterLoading() when registerLoading != null:
return registerLoading();case _RegisterSuccess() when registerSuccess != null:
return registerSuccess();case _RegisterFailure() when registerFailure != null:
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
return registerInitial();case _RegisterLoading():
return registerLoading();case _RegisterSuccess():
return registerSuccess();case _RegisterFailure():
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
return registerInitial();case _RegisterLoading() when registerLoading != null:
return registerLoading();case _RegisterSuccess() when registerSuccess != null:
return registerSuccess();case _RegisterFailure() when registerFailure != null:
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


class _RegisterLoading implements RegisterState {
  const _RegisterLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState.registerLoading()';
}


}




/// @nodoc


class _RegisterSuccess implements RegisterState {
  const _RegisterSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState.registerSuccess()';
}


}




/// @nodoc


class _RegisterFailure implements RegisterState {
  const _RegisterFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterFailureCopyWith<_RegisterFailure> get copyWith => __$RegisterFailureCopyWithImpl<_RegisterFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'RegisterState.registerFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class _$RegisterFailureCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterFailureCopyWith(_RegisterFailure value, $Res Function(_RegisterFailure) _then) = __$RegisterFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class __$RegisterFailureCopyWithImpl<$Res>
    implements _$RegisterFailureCopyWith<$Res> {
  __$RegisterFailureCopyWithImpl(this._self, this._then);

  final _RegisterFailure _self;
  final $Res Function(_RegisterFailure) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(_RegisterFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
