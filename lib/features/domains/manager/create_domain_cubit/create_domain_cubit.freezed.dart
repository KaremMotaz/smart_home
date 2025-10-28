// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_domain_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateDomainState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDomainState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateDomainState()';
}


}

/// @nodoc
class $CreateDomainStateCopyWith<$Res>  {
$CreateDomainStateCopyWith(CreateDomainState _, $Res Function(CreateDomainState) __);
}


/// Adds pattern-matching-related methods to [CreateDomainState].
extension CreateDomainStatePatterns on CreateDomainState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CreateDomainInitial value)?  createDomainInitial,TResult Function( CreateDomainLoading value)?  createDomainLoading,TResult Function( CreateDomainSuccess value)?  createDomainSuccess,TResult Function( CreateDomainFailure value)?  createDomainFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateDomainInitial() when createDomainInitial != null:
return createDomainInitial(_that);case CreateDomainLoading() when createDomainLoading != null:
return createDomainLoading(_that);case CreateDomainSuccess() when createDomainSuccess != null:
return createDomainSuccess(_that);case CreateDomainFailure() when createDomainFailure != null:
return createDomainFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CreateDomainInitial value)  createDomainInitial,required TResult Function( CreateDomainLoading value)  createDomainLoading,required TResult Function( CreateDomainSuccess value)  createDomainSuccess,required TResult Function( CreateDomainFailure value)  createDomainFailure,}){
final _that = this;
switch (_that) {
case _CreateDomainInitial():
return createDomainInitial(_that);case CreateDomainLoading():
return createDomainLoading(_that);case CreateDomainSuccess():
return createDomainSuccess(_that);case CreateDomainFailure():
return createDomainFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CreateDomainInitial value)?  createDomainInitial,TResult? Function( CreateDomainLoading value)?  createDomainLoading,TResult? Function( CreateDomainSuccess value)?  createDomainSuccess,TResult? Function( CreateDomainFailure value)?  createDomainFailure,}){
final _that = this;
switch (_that) {
case _CreateDomainInitial() when createDomainInitial != null:
return createDomainInitial(_that);case CreateDomainLoading() when createDomainLoading != null:
return createDomainLoading(_that);case CreateDomainSuccess() when createDomainSuccess != null:
return createDomainSuccess(_that);case CreateDomainFailure() when createDomainFailure != null:
return createDomainFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  createDomainInitial,TResult Function()?  createDomainLoading,TResult Function()?  createDomainSuccess,TResult Function( ApiErrorModel apiErrorModel)?  createDomainFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateDomainInitial() when createDomainInitial != null:
return createDomainInitial();case CreateDomainLoading() when createDomainLoading != null:
return createDomainLoading();case CreateDomainSuccess() when createDomainSuccess != null:
return createDomainSuccess();case CreateDomainFailure() when createDomainFailure != null:
return createDomainFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  createDomainInitial,required TResult Function()  createDomainLoading,required TResult Function()  createDomainSuccess,required TResult Function( ApiErrorModel apiErrorModel)  createDomainFailure,}) {final _that = this;
switch (_that) {
case _CreateDomainInitial():
return createDomainInitial();case CreateDomainLoading():
return createDomainLoading();case CreateDomainSuccess():
return createDomainSuccess();case CreateDomainFailure():
return createDomainFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  createDomainInitial,TResult? Function()?  createDomainLoading,TResult? Function()?  createDomainSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  createDomainFailure,}) {final _that = this;
switch (_that) {
case _CreateDomainInitial() when createDomainInitial != null:
return createDomainInitial();case CreateDomainLoading() when createDomainLoading != null:
return createDomainLoading();case CreateDomainSuccess() when createDomainSuccess != null:
return createDomainSuccess();case CreateDomainFailure() when createDomainFailure != null:
return createDomainFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _CreateDomainInitial implements CreateDomainState {
  const _CreateDomainInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateDomainInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateDomainState.createDomainInitial()';
}


}




/// @nodoc


class CreateDomainLoading implements CreateDomainState {
  const CreateDomainLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDomainLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateDomainState.createDomainLoading()';
}


}




/// @nodoc


class CreateDomainSuccess implements CreateDomainState {
  const CreateDomainSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDomainSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateDomainState.createDomainSuccess()';
}


}




/// @nodoc


class CreateDomainFailure implements CreateDomainState {
  const CreateDomainFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of CreateDomainState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDomainFailureCopyWith<CreateDomainFailure> get copyWith => _$CreateDomainFailureCopyWithImpl<CreateDomainFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDomainFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'CreateDomainState.createDomainFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $CreateDomainFailureCopyWith<$Res> implements $CreateDomainStateCopyWith<$Res> {
  factory $CreateDomainFailureCopyWith(CreateDomainFailure value, $Res Function(CreateDomainFailure) _then) = _$CreateDomainFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$CreateDomainFailureCopyWithImpl<$Res>
    implements $CreateDomainFailureCopyWith<$Res> {
  _$CreateDomainFailureCopyWithImpl(this._self, this._then);

  final CreateDomainFailure _self;
  final $Res Function(CreateDomainFailure) _then;

/// Create a copy of CreateDomainState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(CreateDomainFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
