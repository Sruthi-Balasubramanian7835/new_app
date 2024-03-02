import 'package:news_app/model/healthcategory_model.dart';
import 'package:news_app/repository/healthcategory_repository.dart';

class HealthCategoryViewModel{
  final _rep=HealthCategoryRepository();

  Future<HealthCategoryModel>fetchHealthCategoryapi() async {
     final response=await _rep.fetchHealthCategoryapi();
   return response;
  }
}