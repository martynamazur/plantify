import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../model/user_account_information.dart';
import '../database/user_account_information.dart';
import '../repository/user_account_information_repository.dart';

part 'user_account_information_provider.g.dart';

@riverpod
UserAccountInformationRepository userAccountInformationRepository(UserAccountInformationRepositoryRef ref) {
  final box = Hive.box<UserAccountInformation>('userAccountBox');
  return UserAccountInformationRepository(box);
}

@riverpod
Future<UserAccountInformation> getUserAccountInformation(GetUserAccountInformationRef ref) async {
  final repository = ref.watch(userAccountInformationRepositoryProvider);
  return repository.getUserAccountInformation();
}

