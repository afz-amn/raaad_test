import 'dart:convert';

import 'package:radio/models/podcast.dart';
import 'package:dio/dio.dart';

import '../fake_date.dart';

Future<List<Podcast>> preparePodcastsRequest() async {
//  Map<String, dynamic> json = Map<String, dynamic>();

  try {
    var response = await Dio().get('https://raw.githubusercontent.com/afz-amn/raaad_test/master/assets/data/podcasts.txt');

    Iterable l = json.decode(response.data);
    List<Podcast> result =
        List<Podcast>.from(l.map((model) => Podcast.fromJson(model)));

    return result;
  } catch (e) {
    print(e);
    return [];
  }
}
