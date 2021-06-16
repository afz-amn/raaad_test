import 'dart:convert';

import 'package:radio/models/youtube_item.dart';
import 'package:dio/dio.dart';

Future<List<YoutubeItem>> prepareYoutubeItemRequest() async {
  //Map<String, dynamic> json = Map<String, dynamic>();


  try {

    var response = await Dio().get(
        'https://raw.githubusercontent.com/afz-amn/raaad_test/master/assets/data/youtube.txt');

    Iterable l = json.decode(response.data);
    List<YoutubeItem> result =
    List<YoutubeItem>.from(l.map((model) => YoutubeItem.fromJson(model)));

    return result;
  } catch (e) {
    print(e);
    return [];

  }
}
