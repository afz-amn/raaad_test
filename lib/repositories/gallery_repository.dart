import 'dart:convert';
import 'package:radio/models/gallery.dart';
import 'package:dio/dio.dart';

Future<List<Gallery>> prepareGalleriesRequest() async {
  try {
    var response = await Dio().get( 'https://raw.githubusercontent.com/afz-amn/raaad_test/master/assets/data/gallery.txt');
    Iterable l = json.decode(response.data);
    List<Gallery> result =
        List<Gallery>.from(l.map((model) => Gallery.fromJson(model)));

    return result;
  } catch (e) {
    print(e);
    return [];
  }
}
