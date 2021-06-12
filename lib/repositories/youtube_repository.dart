import 'package:radio/pages/youtube_channel/Youtube.dart';

Future<List<YoutubeChannel>> prepareYoutubeChannelsRequest() async {
  Map<String, dynamic> json = Map<String, dynamic>();

  var as = YoutubeChannel.fromJson(json);
  return [as];
}
