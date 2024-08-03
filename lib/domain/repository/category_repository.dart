
import 'package:hive/hive.dart';

import '../database/category.dart';

class CategoryRepository {
  final Box<Category> _categoryBox;

  CategoryRepository(this._categoryBox);

  Future<List<Category>> getCategories() async{
    try{
      return _categoryBox.values.toList();
    }catch (e){
      print('Error fetching categories: $e');
      return [];
    }
  }
}