import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_app/scr/models/category.dart';

class CategoryServices {
  String collection = "categories";
  Firestore _firestore = Firestore.instance;

  Future<List<CategoryModel>> getCategories() async =>
      _firestore.collection(collection).getDocuments().then((result) {
        List<CategoryModel> categories = [];
        for(DocumentSnapshot category in result.documents){
          categories.add(CategoryModel.fromSnapshot(category));
        }
        return categories;
      });
}