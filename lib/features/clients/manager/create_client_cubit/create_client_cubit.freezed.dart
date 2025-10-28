// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_client_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateClientState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateClientState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateClientState()';
}


}

/// @nodoc
class $CreateClientStateCopyWith<$Res>  {
$CreateClientStateCopyWith(CreateClientState _, $Res Function(CreateClientState) __);
}


/// Adds pattern-matching-related methods to [CreateClientState].
extension CreateClientStatePatterns on CreateClientState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CreateClientInitial value)?  createClientInitial,TResult Function( CreateClientLoading value)?  createClientLoading,TResult Function( CreateClientSuccess value)?  createClientSuccess,TResult Function( CreateClientFailure value)?  createClientFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateClientInitial() when createClientInitial != null:
return createClientInitial(_that);case CreateClientLoading() when createClientLoading != null:
return createClientLoading(_that);case CreateClientSuccess() when createClientSuccess != null:
return createClientSuccess(_that);case CreateClientFailure() when createClientFailure != null:
return createClientFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CreateClientInitial value)  createClientInitial,required TResult Function( CreateClientLoading value)  createClientLoading,required TResult Function( CreateClientSuccess value)  createClientSuccess,required TResult Function( CreateClientFailure value)  createClientFailure,}){
final _that = this;
switch (_that) {
case _CreateClientInitial():
return createClientInitial(_that);case CreateClientLoading():
return createClientLoading(_that);case CreateClientSuccess():
return createClientSuccess(_that);case CreateClientFailure():
return createClientFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CreateClientInitial value)?  createClientInitial,TResult? Function( CreateClientLoading value)?  createClientLoading,TResult? Function( CreateClientSuccess value)?  createClientSuccess,TResult? Function( CreateClientFailure value)?  createClientFailure,}){
final _that = this;
switch (_that) {
case _CreateClientInitial() when createClientInitial != null:
return createClientInitial(_that);case CreateClientLoading() when createClientLoading != null:
return createClientLoading(_that);case CreateClientSuccess() when createClientSuccess != null:
return createClientSuccess(_that);case CreateClientFailure() when createClientFailure != null:
return createClientFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  createClientInitial,TResult Function()?  createClientLoading,TResult Function()?  createClientSuccess,TResult Function( ApiErrorModel apiErrorModel)?  createClientFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateClientInitial() when createClientInitial != null:
return createClientInitial();case CreateClientLoading() when createClientLoading != null:
return createClientLoading();case CreateClientSuccess() when createClientSuccess != null:
return createClientSuccess();case CreateClientFailure() when createClientFailure != null:
return createClientFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  createClientInitial,required TResult Function()  createClientLoading,required TResult Function()  createClientSuccess,required TResult Function( ApiErrorModel apiErrorModel)  createClientFailure,}) {final _that = this;
switch (_that) {
case _CreateClientInitial():
return createClientInitial();case CreateClientLoading():
return createClientLoading();case CreateClientSuccess():
return createClientSuccess();case CreateClientFailure():
return createClientFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  createClientInitial,TResult? Function()?  createClientLoading,TResult? Function()?  createClientSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  createClientFailure,}) {final _that = this;
switch (_that) {
case _CreateClientInitial() when createClientInitial != null:
return createClientInitial();case CreateClientLoading() when createClientLoading != null:
return createClientLoading();case CreateClientSuccess() when createClientSuccess != null:
return createClientSuccess();case CreateClientFailure() when createClientFailure != null:
return createClientFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _CreateClientInitial implements CreateClientState {
  const _CreateClientInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateClientInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateClientState.createClientInitial()';
}


}




/// @nodoc


class CreateClientLoading implements CreateClientState {
  const CreateClientLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateClientLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateClientState.createClientLoading()';
}


}




/// @nodoc


class CreateClientSuccess implements CreateClientState {
  const CreateClientSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateClientSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateClientState.createClientSuccess()';
}


}




/// @nodoc


class CreateClientFailure implements CreateClientState {
  const CreateClientFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of CreateClientState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateClientFailureCopyWith<CreateClientFailure> get copyWith => _$CreateClientFailureCopyWithImpl<CreateClientFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateClientFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'CreateClientState.createClientFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $CreateClientFailureCopyWith<$Res> implements $CreateClientStateCopyWith<$Res> {
  factory $CreateClientFailureCopyWith(CreateClientFailure value, $Res Function(CreateClientFailure) _then) = _$CreateClientFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$CreateClientFailureCopyWithImpl<$Res>
    implements $CreateClientFailureCopyWith<$Res> {
  _$CreateClientFailureCopyWithImpl(this._self, this._then);

  final CreateClientFailure _self;
  final $Res Function(CreateClientFailure) _then;

/// Create a copy of CreateClientState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(CreateClientFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
