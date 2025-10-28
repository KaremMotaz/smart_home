// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_domain_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateDomainState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDomainState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateDomainState()';
}


}

/// @nodoc
class $UpdateDomainStateCopyWith<$Res>  {
$UpdateDomainStateCopyWith(UpdateDomainState _, $Res Function(UpdateDomainState) __);
}


/// Adds pattern-matching-related methods to [UpdateDomainState].
extension UpdateDomainStatePatterns on UpdateDomainState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UpdateDomainInitial value)?  updateDomainInitial,TResult Function( UpdateDomainLoading value)?  updateDomainLoading,TResult Function( UpdateDomainSuccess value)?  updateDomainSuccess,TResult Function( UpdateDomainFailure value)?  updateDomainFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateDomainInitial() when updateDomainInitial != null:
return updateDomainInitial(_that);case UpdateDomainLoading() when updateDomainLoading != null:
return updateDomainLoading(_that);case UpdateDomainSuccess() when updateDomainSuccess != null:
return updateDomainSuccess(_that);case UpdateDomainFailure() when updateDomainFailure != null:
return updateDomainFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UpdateDomainInitial value)  updateDomainInitial,required TResult Function( UpdateDomainLoading value)  updateDomainLoading,required TResult Function( UpdateDomainSuccess value)  updateDomainSuccess,required TResult Function( UpdateDomainFailure value)  updateDomainFailure,}){
final _that = this;
switch (_that) {
case _UpdateDomainInitial():
return updateDomainInitial(_that);case UpdateDomainLoading():
return updateDomainLoading(_that);case UpdateDomainSuccess():
return updateDomainSuccess(_that);case UpdateDomainFailure():
return updateDomainFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UpdateDomainInitial value)?  updateDomainInitial,TResult? Function( UpdateDomainLoading value)?  updateDomainLoading,TResult? Function( UpdateDomainSuccess value)?  updateDomainSuccess,TResult? Function( UpdateDomainFailure value)?  updateDomainFailure,}){
final _that = this;
switch (_that) {
case _UpdateDomainInitial() when updateDomainInitial != null:
return updateDomainInitial(_that);case UpdateDomainLoading() when updateDomainLoading != null:
return updateDomainLoading(_that);case UpdateDomainSuccess() when updateDomainSuccess != null:
return updateDomainSuccess(_that);case UpdateDomainFailure() when updateDomainFailure != null:
return updateDomainFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  updateDomainInitial,TResult Function()?  updateDomainLoading,TResult Function()?  updateDomainSuccess,TResult Function( ApiErrorModel apiErrorModel)?  updateDomainFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateDomainInitial() when updateDomainInitial != null:
return updateDomainInitial();case UpdateDomainLoading() when updateDomainLoading != null:
return updateDomainLoading();case UpdateDomainSuccess() when updateDomainSuccess != null:
return updateDomainSuccess();case UpdateDomainFailure() when updateDomainFailure != null:
return updateDomainFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  updateDomainInitial,required TResult Function()  updateDomainLoading,required TResult Function()  updateDomainSuccess,required TResult Function( ApiErrorModel apiErrorModel)  updateDomainFailure,}) {final _that = this;
switch (_that) {
case _UpdateDomainInitial():
return updateDomainInitial();case UpdateDomainLoading():
return updateDomainLoading();case UpdateDomainSuccess():
return updateDomainSuccess();case UpdateDomainFailure():
return updateDomainFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  updateDomainInitial,TResult? Function()?  updateDomainLoading,TResult? Function()?  updateDomainSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  updateDomainFailure,}) {final _that = this;
switch (_that) {
case _UpdateDomainInitial() when updateDomainInitial != null:
return updateDomainInitial();case UpdateDomainLoading() when updateDomainLoading != null:
return updateDomainLoading();case UpdateDomainSuccess() when updateDomainSuccess != null:
return updateDomainSuccess();case UpdateDomainFailure() when updateDomainFailure != null:
return updateDomainFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateDomainInitial implements UpdateDomainState {
  const _UpdateDomainInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDomainInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateDomainState.updateDomainInitial()';
}


}




/// @nodoc


class UpdateDomainLoading implements UpdateDomainState {
  const UpdateDomainLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDomainLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateDomainState.updateDomainLoading()';
}


}




/// @nodoc


class UpdateDomainSuccess implements UpdateDomainState {
  const UpdateDomainSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDomainSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateDomainState.updateDomainSuccess()';
}


}




/// @nodoc


class UpdateDomainFailure implements UpdateDomainState {
  const UpdateDomainFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of UpdateDomainState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDomainFailureCopyWith<UpdateDomainFailure> get copyWith => _$UpdateDomainFailureCopyWithImpl<UpdateDomainFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDomainFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'UpdateDomainState.updateDomainFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $UpdateDomainFailureCopyWith<$Res> implements $UpdateDomainStateCopyWith<$Res> {
  factory $UpdateDomainFailureCopyWith(UpdateDomainFailure value, $Res Function(UpdateDomainFailure) _then) = _$UpdateDomainFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$UpdateDomainFailureCopyWithImpl<$Res>
    implements $UpdateDomainFailureCopyWith<$Res> {
  _$UpdateDomainFailureCopyWithImpl(this._self, this._then);

  final UpdateDomainFailure _self;
  final $Res Function(UpdateDomainFailure) _then;

/// Create a copy of UpdateDomainState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(UpdateDomainFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
