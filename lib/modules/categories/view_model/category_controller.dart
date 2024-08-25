import 'package:corelab_challenge/modules/categories/model/category_model.dart';
import 'package:flutter/material.dart';

class CategoryController extends ChangeNotifier {
  CategoryModel? category;

  final List<CategoryModel> categories = [
    const CategoryModel(categoryName: 'Anestésicos e Agulhas Gengival'),
    const CategoryModel(categoryName: 'Biossegurança'),
    const CategoryModel(categoryName: 'Descartáveis'),
    const CategoryModel(categoryName: 'Dentística e Estética'),
    const CategoryModel(categoryName: 'Ortodontia'),
    const CategoryModel(categoryName: 'Endodontia'),
    const CategoryModel(categoryName: 'Periféricos e Peças de Mão'),
    const CategoryModel(categoryName: 'Moldagem'),
    const CategoryModel(categoryName: 'Prótese'),
    const CategoryModel(categoryName: 'Cimentos'),
    const CategoryModel(categoryName: 'Instrumentos'),
    const CategoryModel(categoryName: 'Cirurgia e Periodontia'),
    const CategoryModel(categoryName: 'Radiologia'),
  ];
}
