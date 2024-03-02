import 'package:news_app/model/businesscategory_model.dart';
import 'package:news_app/repository/businesscategory_repository.dart';

class BusinessCategoryViewModel{
  final _rep=BusinessCategoryRepository();
  Future<BusinessCategoryModel>fetchBusinessCategoryapi()async{
     final response=await _rep.fetchBusinessCategoryapi();
     return response;
  }
}