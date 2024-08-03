import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_account_information.freezed.dart';
part 'user_account_information.g.dart';

@freezed
class UserAccInformation with _$UserAccInformation {
  const factory UserAccInformation({
    @JsonKey(name: 'email') required String emailAddress,
    @JsonKey(name: 'name') String? displayName,
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'phone_number') String? phoneNumber,
  }) = _UserAccInformation;
  
  

  factory UserAccInformation.fromJson(Map<String, dynamic> json) =>
      _$UserAccInformationFromJson(json);
}