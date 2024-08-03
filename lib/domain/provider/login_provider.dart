
import 'package:flutter_riverpod/flutter_riverpod.dart';

final obscureTextProvider = StateProvider.autoDispose<bool>((ref) => true);
final errorTextEmailProvider = StateProvider.autoDispose<bool>((ref) => false);
final errorTextPasswordProvider = StateProvider.autoDispose<bool>((ref) => false);
