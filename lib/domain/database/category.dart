import 'package:hive/hive.dart';

part 'category.g.dart';

@HiveType(typeId:1)
class Category {

  Category(this.categoryId,this.categoryName, this.categoryImagePath, this.categoryBackgroundColor);

  @HiveField(0)
  int categoryId;

  @HiveField(1)
  String categoryName;

  @HiveField(2)
  String categoryImagePath;

  @HiveField(3)
  String categoryBackgroundColor;

}

Future<void> setupCategoriesBox(Box<Category> categoriesBox) async {
  //var box = await Hive.openBox<Category>('categoriesBox');
  if (categoriesBox.isEmpty) {
    categoriesBox.add(Category(
        1,
        'Rośliny Domowe',
        'assets/category/test_icon.png',
        '#FFEBEE'
    ));
    categoriesBox.add(Category(
      2,
        'Rośliny Ogrodowe',
        'assets/category/test_icon.png',
        '#FFEB3B'
    ));
    categoriesBox.add(Category(
      3,
        'Rośliny Owocowe i Warzywne',
        'assets/category/test_icon.png',
        '#FF9800'
    ));
    categoriesBox.add(Category(
      4,
        'Rośliny Wodnej i Błotnej',
        'assets/category/test_icon.png',
        '#E0F7FA'
    ));
    categoriesBox.add(Category(
      5,
        'Rośliny Egzotyczne',
        'assets/category/test_icon.png',
        '#FFCCBC'
    ));
    categoriesBox.add(Category(
      6,
        'Akcesoria do Pielęgnacji Roślin',
        'assets/category/test_icon.png',
        '#D7CCC8'
    ));
    categoriesBox.add(Category(
      7,
        'Dekoracje Ogrodowe',
        'assets/category/test_icon.png',
        '#BDBDBD'
    ));
    categoriesBox.add(Category(
      8,
        'Rośliny Sezonowe',
        'assets/category/test_icon.png',
        '#B2DFDB'
    ));
    categoriesBox.add(Category(
      9,
        'Oddam',
        'assets/category/test_icon.png',
        '#D1C4E9'
    ));
    categoriesBox.add(Category(
      10,
        'Zamienie',
        'assets/category/test_icon.png',
        '#D1C4E9'
    ));
  }

  /*
  print("Current categories in box:");
  for (var category in categoriesBox.values) {
    print("Category: ${category.categoryName}, Image: ${category.categoryImagePath}, Color: ${category.categoryBackgroundColor}");
  }
   */
}