import 'package:news_app/model/entertainmentcategory.dart';
import 'package:news_app/repository/entertainmentcategory_repository.dart';

class EntertainmentCategoryViewModel{
  final _rep=EntertainmentCategoryRepository();
  Future<EntertainmentCategoryModel>fetchEntertainmentCategoryapi()async{
   final response=await _rep.fetchEntertainmentCategoryapi();
   return response;
  }
}