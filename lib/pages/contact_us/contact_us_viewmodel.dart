import 'package:radio/models/contact_us_model.dart';
import 'package:stacked/stacked.dart';
import '../../fake_date.dart';
import 'contacts_page.dart';

class ContactListVM extends FutureViewModel<List<ContactUsModel>>{
  @override
  Future<List<ContactUsModel>> futureToRun() {
    return Future.value(ContactUsModelList());
  }
}



