// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_domain_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddDomainState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddDomainState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddDomainState()';
}


}

/// @nodoc
class $AddDomainStateCopyWith<$Res>  {
$AddDomainStateCopyWith(AddDomainState _, $Res Function(AddDomainState) __);
}


/// Adds pattern-matching-related methods to [AddDomainState].
extension AddDomainStatePatterns on AddDomainState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AddDomainInitial value)?  addDomainInitial,TResult Function( AddDomainLoading value)?  addDomainLoading,TResult Function( AddDomainSuccess value)?  addDomainSuccess,TResult Function( AddDomainFailure value)?  addDomainFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddDomainInitial() when addDomainInitial != null:
return addDomainInitial(_that);case AddDomainLoading() when addDomainLoading != null:
return addDomainLoading(_that);case AddDomainSuccess() when addDomainSuccess != null:
return addDomainSuccess(_that);case AddDomainFailure() when addDomainFailure != null:
return addDomainFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AddDomainInitial value)  addDomainInitial,required TResult Function( AddDomainLoading value)  addDomainLoading,required TResult Function( AddDomainSuccess value)  addDomainSuccess,required TResult Function( AddDomainFailure value)  addDomainFailure,}){
final _that = this;
switch (_that) {
case _AddDomainInitial():
return addDomainInitial(_that);case AddDomainLoading():
return addDomainLoading(_that);case AddDomainSuccess():
return addDomainSuccess(_that);case AddDomainFailure():
return addDomainFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AddDomainInitial value)?  addDomainInitial,TResult? Function( AddDomainLoading value)?  addDomainLoading,TResult? Function( AddDomainSuccess value)?  addDomainSuccess,TResult? Function( AddDomainFailure value)?  addDomainFailure,}){
final _that = this;
switch (_that) {
case _AddDomainInitial() when addDomainInitial != null:
return addDomainInitial(_that);case AddDomainLoading() when addDomainLoading != null:
return addDomainLoading(_that);case AddDomainSuccess() when addDomainSuccess != null:
return addDomainSuccess(_that);case AddDomainFailure() when addDomainFailure != null:
return addDomainFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  addDomainInitial,TResult Function()?  addDomainLoading,TResult Function()?  addDomainSuccess,TResult Function( ApiErrorModel apiErrorModel)?  addDomainFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddDomainInitial() when addDomainInitial != null:
return addDomainInitial();case AddDomainLoading() when addDomainLoading != null:
return addDomainLoading();case AddDomainSuccess() when addDomainSuccess != null:
return addDomainSuccess();case AddDomainFailure() when addDomainFailure != null:
return addDomainFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  addDomainInitial,required TResult Function()  addDomainLoading,required TResult Function()  addDomainSuccess,required TResult Function( ApiErrorModel apiErrorModel)  addDomainFailure,}) {final _that = this;
switch (_that) {
case _AddDomainInitial():
return addDomainInitial();case AddDomainLoading():
return addDomainLoading();case AddDomainSuccess():
return addDomainSuccess();case AddDomainFailure():
return addDomainFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  addDomainInitial,TResult? Function()?  addDomainLoading,TResult? Function()?  addDomainSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  addDomainFailure,}) {final _that = this;
switch (_that) {
case _AddDomainInitial() when addDomainInitial != null:
return addDomainInitial();case AddDomainLoading() when addDomainLoading != null:
return addDomainLoading();case AddDomainSuccess() when addDomainSuccess != null:
return addDomainSuccess();case AddDomainFailure() when addDomainFailure != null:
return addDomainFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _AddDomainInitial implements AddDomainState {
  const _AddDomainInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddDomainInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddDomainState.addDomainInitial()';
}


}




/// @nodoc


class AddDomainLoading implements AddDomainState {
  const AddDomainLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddDomainLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddDomainState.addDomainLoading()';
}


}




/// @nodoc


class AddDomainSuccess implements AddDomainState {
  const AddDomainSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddDomainSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddDomainState.addDomainSuccess()';
}


}




/// @nodoc


class AddDomainFailure implements AddDomainState {
  const AddDomainFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of AddDomainState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddDomainFailureCopyWith<AddDomainFailure> get copyWith => _$AddDomainFailureCopyWithImpl<AddDomainFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddDomainFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'AddDomainState.addDomainFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $AddDomainFailureCopyWith<$Res> implements $AddDomainStateCopyWith<$Res> {
  factory $AddDomainFailureCopyWith(AddDomainFailure value, $Res Function(AddDomainFailure) _then) = _$AddDomainFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$AddDomainFailureCopyWithImpl<$Res>
    implements $AddDomainFailureCopyWith<$Res> {
  _$AddDomainFailureCopyWithImpl(this._self, this._then);

  final AddDomainFailure _self;
  final $Res Function(AddDomainFailure) _then;

/// Create a copy of AddDomainState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(AddDomainFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
