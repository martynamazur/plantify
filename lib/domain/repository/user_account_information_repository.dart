

import 'package:hive/hive.dart';

import '../database/user_account_information.dart';

class UserAccountInformationRepository{
  final Box<UserAccountInformation> _userAccInfBox;

  UserAccountInformationRepository(this._userAccInfBox);


  //to sie tylko tyczy wyciagania z boxa
  Future<UserAccountInformation> getUserAccountInformation() async {
    final user = _userAccInfBox.get('user');
    print('${user?.emailAddress} sprawdzam');

    if (user == null) {
      throw Exception('User information not found');
    }

    return user;
  }


  void changeEmailAddress(String newEmailAddress){
    var user = _userAccInfBox.get('user');
    user?.emailAddress = newEmailAddress;
    _userAccInfBox.put('user', user!);
  }

  void changePhoneNumber(String newPhoneNumber){
    var user = _userAccInfBox.get('user');
    user?.phoneNumber = newPhoneNumber;
    _userAccInfBox.put('user', user!);
  }

  void changeDisplayName(String newDisplayName){
    var user = _userAccInfBox.get('user');
    user?.emailAddress = newDisplayName;
    _userAccInfBox.put('user', user!);
  }


}