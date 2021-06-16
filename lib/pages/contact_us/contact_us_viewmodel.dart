import 'package:radio/models/contact_us_model.dart';
import 'package:stacked/stacked.dart';

class ContactListVM extends FutureViewModel<List<ContactUsModel>>{
  @override
  Future<List<ContactUsModel>> futureToRun() {
    return Future.value([]);
  }
}



