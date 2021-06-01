import 'package:radio/fake_date.dart';
import 'package:radio/models/podcast.dart';
import 'package:stacked/stacked.dart';

class PodcastListVM extends FutureViewModel<List<Podcast>> {
  @override
  Future<List<Podcast>> futureToRun() {
    return Future.value(podcastList());
  }

// Future<List<Podcast>> getDataFromServer(){
//.........
// }
}
