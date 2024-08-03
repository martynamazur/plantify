import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:plants_manager/main.dart';
import 'package:plants_manager/model/user_account_information.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'user_account_information.g.dart';

@HiveType(typeId: 2)
class UserAccountInformation {
  UserAccountInformation(
      this.username, this.emailAddress, this.phoneNumber, this.displayName);

  @HiveField(0)
  String username;

  @HiveField(1)
  String emailAddress;

  @HiveField(2)
  String? phoneNumber;

  @HiveField(3)
  String? displayName;
}
//move it latter
Future<void> setUpUserAccountInformationBox() async {
  var userBox = await Hive.openBox<UserAccountInformation>('userAccountBox');

  final userId = supabase.auth.currentUser?.id;
  final response = await supabase
      .from('users')
      .select('*')
      .eq('id', userId!);

  final rp = response.map((json) => UserAccInformation.fromJson(json));

  final userAccount =UserAccountInformation(
      rp.first.username,
      rp.first.emailAddress,
      rp.first.phoneNumber,
      rp.first.displayName);

  await userBox.clear();
  print(userAccount);
  userBox.put('user', userAccount);
}
