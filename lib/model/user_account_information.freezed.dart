// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_account_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAccInformation _$UserAccInformationFromJson(Map<String, dynamic> json) {
  return _UserAccInformation.fromJson(json);
}

/// @nodoc
mixin _$UserAccInformation {
  @JsonKey(name: 'email')
  String get emailAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAccInformationCopyWith<UserAccInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAccInformationCopyWith<$Res> {
  factory $UserAccInformationCopyWith(
          UserAccInformation value, $Res Function(UserAccInformation) then) =
      _$UserAccInformationCopyWithImpl<$Res, UserAccInformation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String emailAddress,
      @JsonKey(name: 'name') String? displayName,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'phone_number') String? phoneNumber});
}

/// @nodoc
class _$UserAccInformationCopyWithImpl<$Res, $Val extends UserAccInformation>
    implements $UserAccInformationCopyWith<$Res> {
  _$UserAccInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? displayName = freezed,
    Object? username = null,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAccInformationImplCopyWith<$Res>
    implements $UserAccInformationCopyWith<$Res> {
  factory _$$UserAccInformationImplCopyWith(_$UserAccInformationImpl value,
          $Res Function(_$UserAccInformationImpl) then) =
      __$$UserAccInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String emailAddress,
      @JsonKey(name: 'name') String? displayName,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'phone_number') String? phoneNumber});
}

/// @nodoc
class __$$UserAccInformationImplCopyWithImpl<$Res>
    extends _$UserAccInformationCopyWithImpl<$Res, _$UserAccInformationImpl>
    implements _$$UserAccInformationImplCopyWith<$Res> {
  __$$UserAccInformationImplCopyWithImpl(_$UserAccInformationImpl _value,
      $Res Function(_$UserAccInformationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? displayName = freezed,
    Object? username = null,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$UserAccInformationImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAccInformationImpl
    with DiagnosticableTreeMixin
    implements _UserAccInformation {
  const _$UserAccInformationImpl(
      {@JsonKey(name: 'email') required this.emailAddress,
      @JsonKey(name: 'name') this.displayName,
      @JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'phone_number') this.phoneNumber});

  factory _$UserAccInformationImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAccInformationImplFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String emailAddress;
  @override
  @JsonKey(name: 'name')
  final String? displayName;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserAccInformation(emailAddress: $emailAddress, displayName: $displayName, username: $username, phoneNumber: $phoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserAccInformation'))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAccInformationImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, emailAddress, displayName, username, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAccInformationImplCopyWith<_$UserAccInformationImpl> get copyWith =>
      __$$UserAccInformationImplCopyWithImpl<_$UserAccInformationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAccInformationImplToJson(
      this,
    );
  }
}

abstract class _UserAccInformation implements UserAccInformation {
  const factory _UserAccInformation(
          {@JsonKey(name: 'email') required final String emailAddress,
          @JsonKey(name: 'name') final String? displayName,
          @JsonKey(name: 'username') required final String username,
          @JsonKey(name: 'phone_number') final String? phoneNumber}) =
      _$UserAccInformationImpl;

  factory _UserAccInformation.fromJson(Map<String, dynamic> json) =
      _$UserAccInformationImpl.fromJson;

  @override
  @JsonKey(name: 'email')
  String get emailAddress;
  @override
  @JsonKey(name: 'name')
  String? get displayName;
  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$UserAccInformationImplCopyWith<_$UserAccInformationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
