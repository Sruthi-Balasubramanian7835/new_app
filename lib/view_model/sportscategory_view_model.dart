import 'package:news_app/model/sports_model.dart';
import 'package:news_app/repository/sportscategory_repository.dart';

class SportsCategoryViewModel{
  final _rep=SportsCategoryRepository();
  Future<SportsCategoryModel>fetchSportsCategoryapi() async{
    final response=await _rep.fetchSportsCategoryapi();
    return response;
  }
}