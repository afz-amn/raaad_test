import 'package:flutter/material.dart';
import 'package:radio/models/youtube_item.dart';
import 'package:dio/dio.dart';
import 'package:radio/pages/youtube_channel/Youtube.dart';
import 'package:radio/pages/youtube_channel/Youtube.dart';
import 'package:radio/pages/youtube_channel/Youtube.dart';

Future<List<YoutubeItem>> prepareYoutubeItemRequest() async {
  //Map<String, dynamic> json = Map<String, dynamic>();

  var as;
  try {
    var response = await Dio().get(
        'http://warehouse.idmp724.com/api/DevAuthentication/CheckDataUpdates?timestamp=1620060256526');
    print(response);

    as = YoutubeItem.fromJson(response.data);
  } catch (e) {
    print(e);
  }
  return [as];
}
