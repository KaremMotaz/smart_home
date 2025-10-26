// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provision_client_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProvisionClientState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProvisionClientState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProvisionClientState()';
}


}

/// @nodoc
class $ProvisionClientStateCopyWith<$Res>  {
$ProvisionClientStateCopyWith(ProvisionClientState _, $Res Function(ProvisionClientState) __);
}


/// Adds pattern-matching-related methods to [ProvisionClientState].
extension ProvisionClientStatePatterns on ProvisionClientState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ProvisionClientInitial value)?  provisionClientInitial,TResult Function( ProvisionClientLoading value)?  provisionClientLoading,TResult Function( ProvisionClientSuccess value)?  provisionClientSuccess,TResult Function( ProvisionClientFailure value)?  provisionClientFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProvisionClientInitial() when provisionClientInitial != null:
return provisionClientInitial(_that);case ProvisionClientLoading() when provisionClientLoading != null:
return provisionClientLoading(_that);case ProvisionClientSuccess() when provisionClientSuccess != null:
return provisionClientSuccess(_that);case ProvisionClientFailure() when provisionClientFailure != null:
return provisionClientFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ProvisionClientInitial value)  provisionClientInitial,required TResult Function( ProvisionClientLoading value)  provisionClientLoading,required TResult Function( ProvisionClientSuccess value)  provisionClientSuccess,required TResult Function( ProvisionClientFailure value)  provisionClientFailure,}){
final _that = this;
switch (_that) {
case _ProvisionClientInitial():
return provisionClientInitial(_that);case ProvisionClientLoading():
return provisionClientLoading(_that);case ProvisionClientSuccess():
return provisionClientSuccess(_that);case ProvisionClientFailure():
return provisionClientFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ProvisionClientInitial value)?  provisionClientInitial,TResult? Function( ProvisionClientLoading value)?  provisionClientLoading,TResult? Function( ProvisionClientSuccess value)?  provisionClientSuccess,TResult? Function( ProvisionClientFailure value)?  provisionClientFailure,}){
final _that = this;
switch (_that) {
case _ProvisionClientInitial() when provisionClientInitial != null:
return provisionClientInitial(_that);case ProvisionClientLoading() when provisionClientLoading != null:
return provisionClientLoading(_that);case ProvisionClientSuccess() when provisionClientSuccess != null:
return provisionClientSuccess(_that);case ProvisionClientFailure() when provisionClientFailure != null:
return provisionClientFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  provisionClientInitial,TResult Function()?  provisionClientLoading,TResult Function()?  provisionClientSuccess,TResult Function( ApiErrorModel apiErrorModel)?  provisionClientFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProvisionClientInitial() when provisionClientInitial != null:
return provisionClientInitial();case ProvisionClientLoading() when provisionClientLoading != null:
return provisionClientLoading();case ProvisionClientSuccess() when provisionClientSuccess != null:
return provisionClientSuccess();case ProvisionClientFailure() when provisionClientFailure != null:
return provisionClientFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  provisionClientInitial,required TResult Function()  provisionClientLoading,required TResult Function()  provisionClientSuccess,required TResult Function( ApiErrorModel apiErrorModel)  provisionClientFailure,}) {final _that = this;
switch (_that) {
case _ProvisionClientInitial():
return provisionClientInitial();case ProvisionClientLoading():
return provisionClientLoading();case ProvisionClientSuccess():
return provisionClientSuccess();case ProvisionClientFailure():
return provisionClientFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  provisionClientInitial,TResult? Function()?  provisionClientLoading,TResult? Function()?  provisionClientSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  provisionClientFailure,}) {final _that = this;
switch (_that) {
case _ProvisionClientInitial() when provisionClientInitial != null:
return provisionClientInitial();case ProvisionClientLoading() when provisionClientLoading != null:
return provisionClientLoading();case ProvisionClientSuccess() when provisionClientSuccess != null:
return provisionClientSuccess();case ProvisionClientFailure() when provisionClientFailure != null:
return provisionClientFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _ProvisionClientInitial implements ProvisionClientState {
  const _ProvisionClientInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProvisionClientInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProvisionClientState.provisionClientInitial()';
}


}




/// @nodoc


class ProvisionClientLoading implements ProvisionClientState {
  const ProvisionClientLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProvisionClientLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProvisionClientState.provisionClientLoading()';
}


}




/// @nodoc


class ProvisionClientSuccess implements ProvisionClientState {
  const ProvisionClientSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProvisionClientSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProvisionClientState.provisionClientSuccess()';
}


}




/// @nodoc


class ProvisionClientFailure implements ProvisionClientState {
  const ProvisionClientFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of ProvisionClientState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProvisionClientFailureCopyWith<ProvisionClientFailure> get copyWith => _$ProvisionClientFailureCopyWithImpl<ProvisionClientFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProvisionClientFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'ProvisionClientState.provisionClientFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $ProvisionClientFailureCopyWith<$Res> implements $ProvisionClientStateCopyWith<$Res> {
  factory $ProvisionClientFailureCopyWith(ProvisionClientFailure value, $Res Function(ProvisionClientFailure) _then) = _$ProvisionClientFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$ProvisionClientFailureCopyWithImpl<$Res>
    implements $ProvisionClientFailureCopyWith<$Res> {
  _$ProvisionClientFailureCopyWithImpl(this._self, this._then);

  final ProvisionClientFailure _self;
  final $Res Function(ProvisionClientFailure) _then;

/// Create a copy of ProvisionClientState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(ProvisionClientFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
