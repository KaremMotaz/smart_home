// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_domains_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetAllDomainsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllDomainsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllDomainsState()';
}


}

/// @nodoc
class $GetAllDomainsStateCopyWith<$Res>  {
$GetAllDomainsStateCopyWith(GetAllDomainsState _, $Res Function(GetAllDomainsState) __);
}


/// Adds pattern-matching-related methods to [GetAllDomainsState].
extension GetAllDomainsStatePatterns on GetAllDomainsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetAllDomainsLoading value)?  getAllDomainsLoading,TResult Function( GetAllDomainsSuccess value)?  getAllDomainsSuccess,TResult Function( GetAllDomainsFailure value)?  getAllDomainsFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetAllDomainsLoading() when getAllDomainsLoading != null:
return getAllDomainsLoading(_that);case GetAllDomainsSuccess() when getAllDomainsSuccess != null:
return getAllDomainsSuccess(_that);case GetAllDomainsFailure() when getAllDomainsFailure != null:
return getAllDomainsFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetAllDomainsLoading value)  getAllDomainsLoading,required TResult Function( GetAllDomainsSuccess value)  getAllDomainsSuccess,required TResult Function( GetAllDomainsFailure value)  getAllDomainsFailure,}){
final _that = this;
switch (_that) {
case GetAllDomainsLoading():
return getAllDomainsLoading(_that);case GetAllDomainsSuccess():
return getAllDomainsSuccess(_that);case GetAllDomainsFailure():
return getAllDomainsFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetAllDomainsLoading value)?  getAllDomainsLoading,TResult? Function( GetAllDomainsSuccess value)?  getAllDomainsSuccess,TResult? Function( GetAllDomainsFailure value)?  getAllDomainsFailure,}){
final _that = this;
switch (_that) {
case GetAllDomainsLoading() when getAllDomainsLoading != null:
return getAllDomainsLoading(_that);case GetAllDomainsSuccess() when getAllDomainsSuccess != null:
return getAllDomainsSuccess(_that);case GetAllDomainsFailure() when getAllDomainsFailure != null:
return getAllDomainsFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getAllDomainsLoading,TResult Function( GetAllDomainsResponseBody getAllDomainsResponseBody,  int selectedIndex)?  getAllDomainsSuccess,TResult Function( ApiErrorModel apiErrorModel)?  getAllDomainsFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetAllDomainsLoading() when getAllDomainsLoading != null:
return getAllDomainsLoading();case GetAllDomainsSuccess() when getAllDomainsSuccess != null:
return getAllDomainsSuccess(_that.getAllDomainsResponseBody,_that.selectedIndex);case GetAllDomainsFailure() when getAllDomainsFailure != null:
return getAllDomainsFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getAllDomainsLoading,required TResult Function( GetAllDomainsResponseBody getAllDomainsResponseBody,  int selectedIndex)  getAllDomainsSuccess,required TResult Function( ApiErrorModel apiErrorModel)  getAllDomainsFailure,}) {final _that = this;
switch (_that) {
case GetAllDomainsLoading():
return getAllDomainsLoading();case GetAllDomainsSuccess():
return getAllDomainsSuccess(_that.getAllDomainsResponseBody,_that.selectedIndex);case GetAllDomainsFailure():
return getAllDomainsFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getAllDomainsLoading,TResult? Function( GetAllDomainsResponseBody getAllDomainsResponseBody,  int selectedIndex)?  getAllDomainsSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  getAllDomainsFailure,}) {final _that = this;
switch (_that) {
case GetAllDomainsLoading() when getAllDomainsLoading != null:
return getAllDomainsLoading();case GetAllDomainsSuccess() when getAllDomainsSuccess != null:
return getAllDomainsSuccess(_that.getAllDomainsResponseBody,_that.selectedIndex);case GetAllDomainsFailure() when getAllDomainsFailure != null:
return getAllDomainsFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class GetAllDomainsLoading implements GetAllDomainsState {
  const GetAllDomainsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllDomainsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllDomainsState.getAllDomainsLoading()';
}


}




/// @nodoc


class GetAllDomainsSuccess implements GetAllDomainsState {
  const GetAllDomainsSuccess({required this.getAllDomainsResponseBody, this.selectedIndex = -1});
  

 final  GetAllDomainsResponseBody getAllDomainsResponseBody;
@JsonKey() final  int selectedIndex;

/// Create a copy of GetAllDomainsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllDomainsSuccessCopyWith<GetAllDomainsSuccess> get copyWith => _$GetAllDomainsSuccessCopyWithImpl<GetAllDomainsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllDomainsSuccess&&(identical(other.getAllDomainsResponseBody, getAllDomainsResponseBody) || other.getAllDomainsResponseBody == getAllDomainsResponseBody)&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex));
}


@override
int get hashCode => Object.hash(runtimeType,getAllDomainsResponseBody,selectedIndex);

@override
String toString() {
  return 'GetAllDomainsState.getAllDomainsSuccess(getAllDomainsResponseBody: $getAllDomainsResponseBody, selectedIndex: $selectedIndex)';
}


}

/// @nodoc
abstract mixin class $GetAllDomainsSuccessCopyWith<$Res> implements $GetAllDomainsStateCopyWith<$Res> {
  factory $GetAllDomainsSuccessCopyWith(GetAllDomainsSuccess value, $Res Function(GetAllDomainsSuccess) _then) = _$GetAllDomainsSuccessCopyWithImpl;
@useResult
$Res call({
 GetAllDomainsResponseBody getAllDomainsResponseBody, int selectedIndex
});




}
/// @nodoc
class _$GetAllDomainsSuccessCopyWithImpl<$Res>
    implements $GetAllDomainsSuccessCopyWith<$Res> {
  _$GetAllDomainsSuccessCopyWithImpl(this._self, this._then);

  final GetAllDomainsSuccess _self;
  final $Res Function(GetAllDomainsSuccess) _then;

/// Create a copy of GetAllDomainsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? getAllDomainsResponseBody = null,Object? selectedIndex = null,}) {
  return _then(GetAllDomainsSuccess(
getAllDomainsResponseBody: null == getAllDomainsResponseBody ? _self.getAllDomainsResponseBody : getAllDomainsResponseBody // ignore: cast_nullable_to_non_nullable
as GetAllDomainsResponseBody,selectedIndex: null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class GetAllDomainsFailure implements GetAllDomainsState {
  const GetAllDomainsFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of GetAllDomainsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllDomainsFailureCopyWith<GetAllDomainsFailure> get copyWith => _$GetAllDomainsFailureCopyWithImpl<GetAllDomainsFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllDomainsFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'GetAllDomainsState.getAllDomainsFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $GetAllDomainsFailureCopyWith<$Res> implements $GetAllDomainsStateCopyWith<$Res> {
  factory $GetAllDomainsFailureCopyWith(GetAllDomainsFailure value, $Res Function(GetAllDomainsFailure) _then) = _$GetAllDomainsFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$GetAllDomainsFailureCopyWithImpl<$Res>
    implements $GetAllDomainsFailureCopyWith<$Res> {
  _$GetAllDomainsFailureCopyWithImpl(this._self, this._then);

  final GetAllDomainsFailure _self;
  final $Res Function(GetAllDomainsFailure) _then;

/// Create a copy of GetAllDomainsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(GetAllDomainsFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
