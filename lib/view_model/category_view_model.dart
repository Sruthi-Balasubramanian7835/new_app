import 'package:news_app/model/category_model.dart';
import 'package:news_app/repository/category_repository.dart';

class CategoryViewModel {
  final _rep = CategoryRepository();
   Future<CategoryModel> fetchCategoryapi(String category) async {
    final response = await _rep.fetchCategoryapi(category);
    return response;
  }
}
