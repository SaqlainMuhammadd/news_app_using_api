import 'package:news_app_using_api/models/news_headline.dart';
import 'package:news_app_using_api/repository/respository.dart';

class NewsViewModel {
  final _repo = NewsRespository();
  List<NewsHeadlineModel> newdealinglist = [];
  Future<List<NewsHeadlineModel>> fetchNewsHeadline() async {
    newdealinglist.clear();
    final response = await _repo.fetchNewsHeadline();
    // newdealinglist.add(response);
    print("res :: ${newdealinglist.length}");
    return newdealinglist;
  }

  static fetchNewsHeadlineModel() {}
}
