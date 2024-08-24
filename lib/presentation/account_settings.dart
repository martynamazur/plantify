import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/provider/user_account_information_provider.dart';
import '../domain/provider/user_provider.dart';

class AccountSettings extends ConsumerStatefulWidget {
  const AccountSettings({super.key});

  @override
  _AccountSettingsState createState() => _AccountSettingsState();
}

class _AccountSettingsState extends ConsumerState<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    final userInformation = ref.watch(getUserAccountInformationProvider);
    final userRepository = ref.watch(userRepositoryProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Account Settings')),
      body: SafeArea(
        child: userInformation.when(
          data: (userData) {
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
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
    );
  }

  Widget _phoneNumberSection(String? phoneNumber) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.phone),
          Text(phoneNumber != null
              ? phoneNumber
              : 'You didn\'t add a phone number'),
          OutlinedButton(
            onPressed: () {
              showInputDialogPhoneNumber();
            },
            child: Text(phoneNumber != null ? 'Change' : 'Set'),
          ),
        ],
      ),
    );
  }

  Widget _emailAddressSection(String emailAddress) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.email),
          Text(emailAddress),
          OutlinedButton(onPressed: () {}, child: Text('Change')),
        ],
      ),
    );
  }

  Widget _nameSection(String? name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.person),
          Text('Full Name: $name'),
          OutlinedButton(
              onPressed: () {
                showInputDialogDisplayName();
              },
              child: Text('Change')),
        ],
      ),
    );
  }


  void showInputDialogPhoneNumber() {
    final TextEditingController _controller = TextEditingController();

    showDialog(
      context: context, // Directly use context from the State class
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter your phone number'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Type your phone number...',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                final inputValue = _controller.text;
                final userRepository =
                    ref.read(userRepositoryProvider); // Access provider
                userRepository.updatePhoneNumber(inputValue);
                Navigator.of(context).pop();
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }

  void showInputDialogDisplayName() {
    final TextEditingController _controller = TextEditingController();

    showDialog(
      context: context, // Directly use context from the State class
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Change your contact name'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _controller,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                final inputValue = _controller.text;
                final userRepository =
                    ref.read(userRepositoryProvider); // Access provider
                userRepository.updateDisplayName(inputValue);
                Navigator.of(context).pop();
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }
}
