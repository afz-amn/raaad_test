import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:radio/models/youtube_item.dart';
import 'package:dio/dio.dart';
import 'package:radio/pages/youtube_channel/Youtube.dart';
import 'package:radio/pages/youtube_channel/Youtube.dart';
import 'package:radio/pages/youtube_channel/Youtube.dart';

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
