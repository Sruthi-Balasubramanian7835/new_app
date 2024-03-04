import 'package:news_app/model/newschannel_headlinesmodel.dart';
import 'package:news_app/repository/news_repository.dart';

class NewsViewModel {
  final _rep = NewsRepository();
   Future<NewsChannelHeadLinesModel> fetchNewsChannelHeadlinesApi() async {
    final response = await _rep.fetchNewsChannelHeadlinesApi();
    return response;
  }
}
