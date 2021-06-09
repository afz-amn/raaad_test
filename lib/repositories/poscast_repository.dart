import 'package:radio/models/podcast.dart';

Future<List<Podcast>> preparePodcastsRequest() async {
  Map<String, dynamic> json = Map<String, dynamic>();

  var as = Podcast.fromJson(json);
  return [as];
}
