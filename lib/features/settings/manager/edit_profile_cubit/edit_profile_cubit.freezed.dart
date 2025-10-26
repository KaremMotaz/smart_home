// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditProfileState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileState()';
}


}

/// @nodoc
class $EditProfileStateCopyWith<$Res>  {
$EditProfileStateCopyWith(EditProfileState _, $Res Function(EditProfileState) __);
}


/// Adds pattern-matching-related methods to [EditProfileState].
extension EditProfileStatePatterns on EditProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _EditProfileInitial value)?  editProfileInitial,TResult Function( EditProfileLoading value)?  editProfileLoading,TResult Function( EditProfileSuccess value)?  editProfileSuccess,TResult Function( EditProfileFailure value)?  editProfileFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditProfileInitial() when editProfileInitial != null:
return editProfileInitial(_that);case EditProfileLoading() when editProfileLoading != null:
return editProfileLoading(_that);case EditProfileSuccess() when editProfileSuccess != null:
return editProfileSuccess(_that);case EditProfileFailure() when editProfileFailure != null:
return editProfileFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _EditProfileInitial value)  editProfileInitial,required TResult Function( EditProfileLoading value)  editProfileLoading,required TResult Function( EditProfileSuccess value)  editProfileSuccess,required TResult Function( EditProfileFailure value)  editProfileFailure,}){
final _that = this;
switch (_that) {
case _EditProfileInitial():
return editProfileInitial(_that);case EditProfileLoading():
return editProfileLoading(_that);case EditProfileSuccess():
return editProfileSuccess(_that);case EditProfileFailure():
return editProfileFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _EditProfileInitial value)?  editProfileInitial,TResult? Function( EditProfileLoading value)?  editProfileLoading,TResult? Function( EditProfileSuccess value)?  editProfileSuccess,TResult? Function( EditProfileFailure value)?  editProfileFailure,}){
final _that = this;
switch (_that) {
case _EditProfileInitial() when editProfileInitial != null:
return editProfileInitial(_that);case EditProfileLoading() when editProfileLoading != null:
return editProfileLoading(_that);case EditProfileSuccess() when editProfileSuccess != null:
return editProfileSuccess(_that);case EditProfileFailure() when editProfileFailure != null:
return editProfileFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  editProfileInitial,TResult Function()?  editProfileLoading,TResult Function()?  editProfileSuccess,TResult Function( ApiErrorModel apiErrorModel)?  editProfileFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditProfileInitial() when editProfileInitial != null:
return editProfileInitial();case EditProfileLoading() when editProfileLoading != null:
return editProfileLoading();case EditProfileSuccess() when editProfileSuccess != null:
return editProfileSuccess();case EditProfileFailure() when editProfileFailure != null:
return editProfileFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  editProfileInitial,required TResult Function()  editProfileLoading,required TResult Function()  editProfileSuccess,required TResult Function( ApiErrorModel apiErrorModel)  editProfileFailure,}) {final _that = this;
switch (_that) {
case _EditProfileInitial():
return editProfileInitial();case EditProfileLoading():
return editProfileLoading();case EditProfileSuccess():
return editProfileSuccess();case EditProfileFailure():
return editProfileFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  editProfileInitial,TResult? Function()?  editProfileLoading,TResult? Function()?  editProfileSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  editProfileFailure,}) {final _that = this;
switch (_that) {
case _EditProfileInitial() when editProfileInitial != null:
return editProfileInitial();case EditProfileLoading() when editProfileLoading != null:
return editProfileLoading();case EditProfileSuccess() when editProfileSuccess != null:
return editProfileSuccess();case EditProfileFailure() when editProfileFailure != null:
return editProfileFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _EditProfileInitial implements EditProfileState {
  const _EditProfileInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditProfileInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileState.editProfileInitial()';
}


}




/// @nodoc


class EditProfileLoading implements EditProfileState {
  const EditProfileLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileState.editProfileLoading()';
}


}




/// @nodoc


class EditProfileSuccess implements EditProfileState {
  const EditProfileSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileState.editProfileSuccess()';
}


}




/// @nodoc


class EditProfileFailure implements EditProfileState {
  const EditProfileFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditProfileFailureCopyWith<EditProfileFailure> get copyWith => _$EditProfileFailureCopyWithImpl<EditProfileFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'EditProfileState.editProfileFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $EditProfileFailureCopyWith<$Res> implements $EditProfileStateCopyWith<$Res> {
  factory $EditProfileFailureCopyWith(EditProfileFailure value, $Res Function(EditProfileFailure) _then) = _$EditProfileFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$EditProfileFailureCopyWithImpl<$Res>
    implements $EditProfileFailureCopyWith<$Res> {
  _$EditProfileFailureCopyWithImpl(this._self, this._then);

  final EditProfileFailure _self;
  final $Res Function(EditProfileFailure) _then;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(EditProfileFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
