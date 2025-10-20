// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeleteAccountState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteAccountState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteAccountState()';
}


}

/// @nodoc
class $DeleteAccountStateCopyWith<$Res>  {
$DeleteAccountStateCopyWith(DeleteAccountState _, $Res Function(DeleteAccountState) __);
}


/// Adds pattern-matching-related methods to [DeleteAccountState].
extension DeleteAccountStatePatterns on DeleteAccountState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _DeleteAccountInitial value)?  deleteAccountInitial,TResult Function( DeleteAccountLoading value)?  deleteAccountLoading,TResult Function( DeleteAccountSuccess value)?  deleteAccountSuccess,TResult Function( DeleteAccountFailure value)?  deleteAccountFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteAccountInitial() when deleteAccountInitial != null:
return deleteAccountInitial(_that);case DeleteAccountLoading() when deleteAccountLoading != null:
return deleteAccountLoading(_that);case DeleteAccountSuccess() when deleteAccountSuccess != null:
return deleteAccountSuccess(_that);case DeleteAccountFailure() when deleteAccountFailure != null:
return deleteAccountFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _DeleteAccountInitial value)  deleteAccountInitial,required TResult Function( DeleteAccountLoading value)  deleteAccountLoading,required TResult Function( DeleteAccountSuccess value)  deleteAccountSuccess,required TResult Function( DeleteAccountFailure value)  deleteAccountFailure,}){
final _that = this;
switch (_that) {
case _DeleteAccountInitial():
return deleteAccountInitial(_that);case DeleteAccountLoading():
return deleteAccountLoading(_that);case DeleteAccountSuccess():
return deleteAccountSuccess(_that);case DeleteAccountFailure():
return deleteAccountFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _DeleteAccountInitial value)?  deleteAccountInitial,TResult? Function( DeleteAccountLoading value)?  deleteAccountLoading,TResult? Function( DeleteAccountSuccess value)?  deleteAccountSuccess,TResult? Function( DeleteAccountFailure value)?  deleteAccountFailure,}){
final _that = this;
switch (_that) {
case _DeleteAccountInitial() when deleteAccountInitial != null:
return deleteAccountInitial(_that);case DeleteAccountLoading() when deleteAccountLoading != null:
return deleteAccountLoading(_that);case DeleteAccountSuccess() when deleteAccountSuccess != null:
return deleteAccountSuccess(_that);case DeleteAccountFailure() when deleteAccountFailure != null:
return deleteAccountFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  deleteAccountInitial,TResult Function()?  deleteAccountLoading,TResult Function()?  deleteAccountSuccess,TResult Function( ApiErrorModel apiErrorModel)?  deleteAccountFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteAccountInitial() when deleteAccountInitial != null:
return deleteAccountInitial();case DeleteAccountLoading() when deleteAccountLoading != null:
return deleteAccountLoading();case DeleteAccountSuccess() when deleteAccountSuccess != null:
return deleteAccountSuccess();case DeleteAccountFailure() when deleteAccountFailure != null:
return deleteAccountFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  deleteAccountInitial,required TResult Function()  deleteAccountLoading,required TResult Function()  deleteAccountSuccess,required TResult Function( ApiErrorModel apiErrorModel)  deleteAccountFailure,}) {final _that = this;
switch (_that) {
case _DeleteAccountInitial():
return deleteAccountInitial();case DeleteAccountLoading():
return deleteAccountLoading();case DeleteAccountSuccess():
return deleteAccountSuccess();case DeleteAccountFailure():
return deleteAccountFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  deleteAccountInitial,TResult? Function()?  deleteAccountLoading,TResult? Function()?  deleteAccountSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  deleteAccountFailure,}) {final _that = this;
switch (_that) {
case _DeleteAccountInitial() when deleteAccountInitial != null:
return deleteAccountInitial();case DeleteAccountLoading() when deleteAccountLoading != null:
return deleteAccountLoading();case DeleteAccountSuccess() when deleteAccountSuccess != null:
return deleteAccountSuccess();case DeleteAccountFailure() when deleteAccountFailure != null:
return deleteAccountFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _DeleteAccountInitial implements DeleteAccountState {
  const _DeleteAccountInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteAccountInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteAccountState.deleteAccountInitial()';
}


}




/// @nodoc


class DeleteAccountLoading implements DeleteAccountState {
  const DeleteAccountLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteAccountLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteAccountState.deleteAccountLoading()';
}


}




/// @nodoc


class DeleteAccountSuccess implements DeleteAccountState {
  const DeleteAccountSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteAccountSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteAccountState.deleteAccountSuccess()';
}


}




/// @nodoc


class DeleteAccountFailure implements DeleteAccountState {
  const DeleteAccountFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of DeleteAccountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteAccountFailureCopyWith<DeleteAccountFailure> get copyWith => _$DeleteAccountFailureCopyWithImpl<DeleteAccountFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteAccountFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'DeleteAccountState.deleteAccountFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $DeleteAccountFailureCopyWith<$Res> implements $DeleteAccountStateCopyWith<$Res> {
  factory $DeleteAccountFailureCopyWith(DeleteAccountFailure value, $Res Function(DeleteAccountFailure) _then) = _$DeleteAccountFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$DeleteAccountFailureCopyWithImpl<$Res>
    implements $DeleteAccountFailureCopyWith<$Res> {
  _$DeleteAccountFailureCopyWithImpl(this._self, this._then);

  final DeleteAccountFailure _self;
  final $Res Function(DeleteAccountFailure) _then;

/// Create a copy of DeleteAccountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(DeleteAccountFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
