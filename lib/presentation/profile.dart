import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plants_manager/domain/database/user_account_information.dart';
import 'package:plants_manager/utils/headline_text.dart';

import '../../domain/provider/user_account_information_provider.dart';
import '../../utils/offer_status_enum.dart';
import '../../domain/provider/test.dart';

class Profile extends ConsumerWidget {
  const Profile({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInformation = ref.watch(getUserAccountInformationProvider);
    final email = ref.watch(userEmailStreamProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/settings');
          }, icon: Icon(Icons.settings))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              _buildUserInformation(userInformation),
              _addNewOffer(),
              SizedBox(height: 8.0),
              _buyListingPackage(),
              SizedBox(height: 32),
              _buildSellSection(),
              SizedBox(height: 50),
              //Text(email.asData!.value)

            ],
          ),
        ),
      ),
    );
  }

  Widget _addNewOffer(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent
      ),
      child: Row(
        children: [
          Text('Add new offer'),
        ],
      ),
    );
  }

  Widget _buyListingPackage(){
    return Container(
      decoration: BoxDecoration(
          color: Colors.yellow
      ),
      child: Row(
        children: [
          Text('Buy Listing Package')
        ],
      ),
    );
  }

  Widget _buildUserInformation(AsyncValue<UserAccountInformation> userInformation) {
    return userInformation.when(
      data: (data) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Image.asset(
                'assets/error_icon.jpg',
                height: 70,
                width: 70,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Hej ${data.displayName ?? 'User'}',
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              '@${data.username ?? 'username'}',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 8.0),
            //Text('With us since ${data.registrationDate ?? 'unknown'}', // Dynamic registration datestyle: TextStyle(fontSize: 14.0,color: Colors.grey[500], ,

          ],
        );
      },
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Text(
        'Error: $err',
        style: TextStyle(color: Colors.red), // Changed color to red for errors
      ),
    );
  }

  Widget _buildSellSection() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Selling', style: headline),
          outlinedButton('status', 1, 'route'),
          outlinedButton('status', 1, 'route'),
          outlinedButton('status', 1, 'route'),
          outlinedButton('status', 0, 'route'),
        ]);
  }

  OutlinedButton outlinedButton(String status, int amount, String route) {
    return OutlinedButton(
        onPressed: () {},
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(amount != 0 ? '$status ($amount)' : status),
              Icon(Icons.arrow_forward_ios)
            ]));
  }

}
