import 'package:radio/models/youtube_item.dart';
import 'package:radio/pages/youtube_channel/Youtube.dart';
import 'package:stacked/stacked.dart';

import '../../fake_date.dart';

class YoutubeListVM extends FutureViewModel<List<YoutubeItem>>{
  @override
  Future<List<YoutubeItem>> futureToRun() {
    return Future.value(youtubeChannelList());
}

  }
