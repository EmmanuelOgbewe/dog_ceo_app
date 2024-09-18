// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breeds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Breeds _$BreedsFromJson(Map<String, dynamic> json) {
  return _Breeds.fromJson(json);
}

/// @nodoc
mixin _$Breeds {
  Map<String, dynamic> get message =>
      throw _privateConstructorUsedError; // Map to handle dynamic breed data
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreedsCopyWith<Breeds> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedsCopyWith<$Res> {
  factory $BreedsCopyWith(Breeds value, $Res Function(Breeds) then) =
      _$BreedsCopyWithImpl<$Res, Breeds>;
  @useResult
  $Res call({Map<String, dynamic> message, String status});
}

/// @nodoc
class _$BreedsCopyWithImpl<$Res, $Val extends Breeds>
    implements $BreedsCopyWith<$Res> {
  _$BreedsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreedsImplCopyWith<$Res> implements $BreedsCopyWith<$Res> {
  factory _$$BreedsImplCopyWith(
          _$BreedsImpl value, $Res Function(_$BreedsImpl) then) =
      __$$BreedsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> message, String status});
}

/// @nodoc
class __$$BreedsImplCopyWithImpl<$Res>
    extends _$BreedsCopyWithImpl<$Res, _$BreedsImpl>
    implements _$$BreedsImplCopyWith<$Res> {
  __$$BreedsImplCopyWithImpl(
      _$BreedsImpl _value, $Res Function(_$BreedsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_$BreedsImpl(
      message: null == message
          ? _value._message
          : message // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BreedsImpl implements _Breeds {
  const _$BreedsImpl(
      {required final Map<String, dynamic> message, required this.status})
      : _message = message;

  factory _$BreedsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreedsImplFromJson(json);

  final Map<String, dynamic> _message;
  @override
  Map<String, dynamic> get message {
    if (_message is EqualUnmodifiableMapView) return _message;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_message);
  }

// Map to handle dynamic breed data
  @override
  final String status;

  @override
  String toString() {
    return 'Breeds(message: $message, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreedsImpl &&
            const DeepCollectionEquality().equals(other._message, _message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_message), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreedsImplCopyWith<_$BreedsImpl> get copyWith =>
      __$$BreedsImplCopyWithImpl<_$BreedsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreedsImplToJson(
      this,
    );
  }
}

abstract class _Breeds implements Breeds {
  const factory _Breeds(
      {required final Map<String, dynamic> message,
      required final String status}) = _$BreedsImpl;

  factory _Breeds.fromJson(Map<String, dynamic> json) = _$BreedsImpl.fromJson;

  @override
  Map<String, dynamic> get message;
  @override // Map to handle dynamic breed data
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$BreedsImplCopyWith<_$BreedsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
