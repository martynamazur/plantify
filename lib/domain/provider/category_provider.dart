import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../database/category.dart';
import '../repository/category_repository.dart';

part 'category_provider.g.dart';

@riverpod
CategoryRepository categoryRepository(CategoryRepositoryRef ref) {
  final box = Hive.box<Category>('categoriesBox');
  return CategoryRepository(box);
}

@riverpod
Future<List<Category>> getCategories(GetCategoriesRef ref) async {
  return ref.watch(categoryRepositoryProvider).getCategories();
}

