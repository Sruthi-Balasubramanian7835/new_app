import 'package:news_app/model/politicscategorynews_model.dart';
import 'package:news_app/repository/politicscategory_repository.dart';

class PoliticsCategoryViewModel{
  final _rep=PoliticsCategoryRepository();
  Future<PoliticsCategoryModel>fetchPoliticsCategoryapi()async{
     final response=await _rep.fetchPoliticsCategoryapi();
   return response;
  }
}