import 'package:news_app/model/technologycategory_model.dart';
import 'package:news_app/repository/technologycategory_repository.dart';

class TechnologyCategoryViewModel{
  final _rep=TechnologyCategoryRepositoryModel();
  Future<TechnologyCategoryModel>fetchTechnologyCategoryapi()async{
     final response=await _rep.fetchTechnologyCategoryapi();
    return response;
  }
}