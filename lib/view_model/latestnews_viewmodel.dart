import 'package:news_app/model/latestnews_model.dart';
import 'package:news_app/repository/latestnews_repository.dart';

class LatestNewsViewModel{
  final _rep=LatestNewsRepository();

  Future<LatestNewsModel>fetchLatestNewsChannelApi()async{
   final response=await _rep.fetchLatestNewsChannelApi();
   return response;
  }
}