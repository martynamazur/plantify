
import 'package:plants_manager/domain/repository/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

@riverpod
UserRepository userRepository (UserRepositoryRef ref) {
  return UserRepository();
}

