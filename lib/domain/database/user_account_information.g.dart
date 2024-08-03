// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_account_information.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAccountInformationAdapter
    extends TypeAdapter<UserAccountInformation> {
  @override
  final int typeId = 2;

  @override
  UserAccountInformation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserAccountInformation(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String?,
      fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserAccountInformation obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.username)
      ..writeByte(1)
      ..write(obj.emailAddress)
      ..writeByte(2)
      ..write(obj.phoneNumber)
      ..writeByte(3)
      ..write(obj.displayName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAccountInformationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
