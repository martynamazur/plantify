// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_account_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAccInformationImpl _$$UserAccInformationImplFromJson(
        Map<String, dynamic> json) =>
    _$UserAccInformationImpl(
      emailAddress: json['email'] as String,
      displayName: json['name'] as String?,
      username: json['username'] as String,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$$UserAccInformationImplToJson(
        _$UserAccInformationImpl instance) =>
    <String, dynamic>{
      'email': instance.emailAddress,
      'name': instance.displayName,
      'username': instance.username,
      'phone_number': instance.phoneNumber,
    };
