import 'package:radio/fake_date.dart';
import 'package:radio/models/gallery.dart';
import 'package:radio/repositories/gallery_repository.dart';
import 'package:stacked/stacked.dart';

class GalleryViewModel extends FutureViewModel<List<Gallery>> {
  @override
  Future<List<Gallery>> futureToRun() {
    return prepareGalleriesRequest();
  }
}
