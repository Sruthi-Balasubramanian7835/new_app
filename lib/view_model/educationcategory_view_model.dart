import 'package:news_app/model/educationcategory_model.dart';
import 'package:news_app/repository/educationcategory_repository.dart';

class EducationCategoryViewModel{
  final _rep=EducationCategoryRepository();
  Future<EducationCategoryModel>fetchEducationCategoryapi()async{
    final response=await _rep.fetchEducationCategoryapi();
   return response;
  }
}