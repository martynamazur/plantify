import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../main.dart';
import '../../model/user_account_information.dart';

part 'test.g.dart';

/*
@riverpod
class EmailNotifier extends _$EmailNotifier{
  @override
  Future<String> build() async{
    return '';
  }

  Future<void> updateEmailAddress() async{
    final user = supabase.auth.currentUser;
    final userId = user!.id;

    final response = supabase
        .from('users')
        .stream(primaryKey: ['id'])
        .eq('id', userId)
        .map((data) => data.first['email']);
  }
    state = AsyncData(response.asData);
}

 */



@riverpod
Stream<String> userEmailStream(UserEmailStreamRef ref) {
  final user = supabase.auth.currentUser;
  final userId = user!.id;

  return supabase
      .from('users')
      .stream(primaryKey: ['id'])
      .eq('id', userId)
      .map((data) => data.first['email']);

}

@riverpod
Stream<String> userNameStream(UserNameStreamRef ref){
  final user = supabase.auth.currentUser;
  final userId = user!.id;

  return supabase
      .from('users')
      .stream(primaryKey: ['id'])
      .eq('id', userId)
      .map((event) => event.first['username']);
}


@riverpod
Stream<String> nameStream(NameStreamRef ref){
  final user = supabase.auth.currentUser;
  final userId = user!.id;

  return supabase
      .from('users')
      .stream(primaryKey: ['id'])
      .eq('id', userId)
      .map((event) => event.first['name']);
}

@riverpod
Stream<String> phoneNumberStream(PhoneNumberStreamRef ref){
  final user = supabase.auth.currentUser;
  final userId = user!.id;

  return supabase
      .from('users')
      .stream(primaryKey: ['id'])
      .eq('id', userId)
      .map((event) => event.isNotEmpty ? event.first['phone_number'] : '');
}
