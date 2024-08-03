import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plants_manager/domain/provider/user_account_information_provider.dart';

class ChangeEmailAddress extends ConsumerStatefulWidget{
  const ChangeEmailAddress({super.key});

  @override
  ChangeEmailAddressState createState() => ChangeEmailAddressState();
  
}

class ChangeEmailAddressState extends ConsumerState<ChangeEmailAddress>{
  @override
  Widget build(BuildContext context) {
    final repository = ref.watch(userAccountInformationRepositoryProvider);

    // TODO: implement build
    throw UnimplementedError();
  }
  
}