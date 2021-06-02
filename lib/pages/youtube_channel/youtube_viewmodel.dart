import 'package:radio/pages/youtube_channel/Youtube.dart';
import 'package:stacked/stacked.dart';

import '../../fake_date.dart';

class YoutubeListVM extends FutureViewModel<List<YoutubeChannel>>{
  @override
  Future<List<YoutubeChannel>> futureToRun() {
    return Future.value(youtubeChannelList());
}

  }
