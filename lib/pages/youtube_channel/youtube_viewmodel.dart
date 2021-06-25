import 'package:radio/models/youtube_item.dart';
import 'package:radio/repositories/youtube_repository.dart';
import 'package:stacked/stacked.dart';

class YoutubeListVM extends FutureViewModel<List<YoutubeItem>> {
  List<String> _ids = [];

  List<String> get ids => _ids;

  @override
  Future<List<YoutubeItem>> futureToRun() async {
    var response = await prepareYoutubeItemRequest();

    _ids = [];

    response.forEach((element) {
      _ids.add(element.url);
    });
    notifyListeners();
    return response;
  }
}
