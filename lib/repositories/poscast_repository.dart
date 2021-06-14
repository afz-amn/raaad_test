import 'package:radio/models/podcast.dart';
import 'package:dio/dio.dart';

Future<List<Podcast>> preparePodcastsRequest() async {
//  Map<String, dynamic> json = Map<String, dynamic>();

  var as;
  try {
    var response = await Dio().get('http://warehouse.idmp724.com/api/DevAuthentication/CheckDataUpdates?timestamp=1620060256526');
    print(response);

    as = Podcast.fromJson(response.data);
  } catch (e) {
    print(e);
  }
  return [as];
}
