import 'package:radio/fake_date.dart';
import 'package:radio/models/podcast.dart';
import 'package:radio/repositories/poscast_repository.dart';
import 'package:stacked/stacked.dart';

class PodcastListVM extends FutureViewModel<List<Podcast>> {
  @override
  Future<List<Podcast>> futureToRun() {
    return preparePodcastsRequest();
  }

// Future<List<Podcast>> getDataFromServer(){
//.........
// }
}
