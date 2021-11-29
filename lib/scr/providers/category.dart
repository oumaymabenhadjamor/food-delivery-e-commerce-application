import 'package:flutter/material.dart';
import 'package:food_app/scr/helpers/category.dart';
import 'package:food_app/scr/models/category.dart';


class CategoryProvider with ChangeNotifier{
  CategoryServices _categoryServices = CategoryServices();
  List<CategoryModel> categories = [];

  CategoryProvider.initialize(){
    loadCategories();
  }

  loadCategories()async{
    categories = await _categoryServices.getCategories();
    notifyListeners();
  }
}