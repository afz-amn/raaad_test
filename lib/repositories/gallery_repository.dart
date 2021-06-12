import 'package:radio/models/gallery.dart';

Future<List<Gallery>> prepareGalleriesRequest() async {
  Map<String, dynamic> json = Map<String, dynamic>();

  var as = Gallery.fromJson(json);
  return [as];
}
