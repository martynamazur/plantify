import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/provider/user_account_information_provider.dart';
import '../../model/setting.dart';

class AccountSettings extends ConsumerWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInformation = ref.watch(getUserAccountInformationProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Account Settings')),
      body: SafeArea(
        child: userInformation.when(
            data: (userData){
              return Column(
                children: [
                  _nameSection(userData.displayName),
                  Divider(),
                  SizedBox(height: 16.0),
                  _emailAddressSection(userData.emailAddress),
                  Divider(),
                  SizedBox(height: 16.0),
                  _phoneNumberSection(userData.phoneNumber),
                  Divider(),

                ],
              );
            },
            loading: () => const CircularProgressIndicator(),
            error: (err, stack) => Text(
              'Error: $err',
              style: TextStyle(color: Colors.red), // Changed color to red for errors
          ),
        )
      ),
    );
  }

  Widget _phoneNumberSection(String? phoneNumber){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.phone),
          Text( phoneNumber != null ? phoneNumber : 'You didnt add phone number'),
          OutlinedButton(onPressed: (){}, child: Text(phoneNumber !=null ? 'Change' : 'Set'))
        ],
      ),
    );
  }

  Widget _emailAddressSection(String emailAddress){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.email),
          Text(emailAddress),
          OutlinedButton(onPressed: (){}, child: Text('Change'))
        ],
      ),
    );
  }

  Widget _nameSection(String? name){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.person),
          Text('Full Name: $name'),
          OutlinedButton(onPressed: (){}, child: Text('Change'))
        ],
      ),
    );
  }


}
