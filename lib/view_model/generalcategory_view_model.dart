import 'package:news_app/model/generalcategory_model.dart';
import 'package:news_app/repository/generalcategoryrepository.dart';

class GeneralCategoryViewModel{
final _rep=GeneralCategoryRepository();

Future<GeneralCategoryModel>fetchGeneralCategoryapi() async {
   final response=await _rep.fetchGeneralCategoryapi();
   return response;
  
}
}