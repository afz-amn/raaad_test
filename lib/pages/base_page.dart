import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio/pages/contact_us/contacts_page.dart';
import 'package:radio/pages/radio/main_radio_page.dart';
import 'package:radio/pages/pudcast_list/podcost_list_viewmodel.dart';
import 'package:radio/pages/pudcast_list/pudcast_list_page.dart';
import 'package:radio/pages/youtube_channel/youtube_list_page.dart';
import 'package:stacked/stacked.dart';
import 'package:radio/styles/assets.dart';
import 'package:radio/styles/dimens.dart';

import 'gallery/Gallery_page.dart';


class BasePage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => BasePageState();
}

class BasePageState extends State<BasePage>
    with SingleTickerProviderStateMixin {
  double valueCurrent = 0;
  int _selectedIndex = 0;
  String _title = "Radio Tiam";
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  Widget body() {
    switch (_selectedIndex) {
      case 0:
        return MainRadioPage();
      case 1:
        return PodcastListPage();
      case 2:
        return YoutubeListPage();
      case 3:
        return GalleryPage();
      default:
        return ContactsPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PodcastListVM>.reactive(
        viewModelBuilder: () => PodcastListVM(),
        builder: (context, model, child) => Scaffold(
              key: key,
              backgroundColor: Colors.black87,
              drawer: Drawer(
                child: Container(
                  color: Colors.grey.shade900,
                  child: Column(
                    children: [
                      AppBar(
                        title: Text(
                          _title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        leading: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.close,
                              color: Colors.black,
                            )),
                      ),
                      Container(
                          width: fullWidth(context),
                          height: 150,
                          child: Image.asset(PlayPhoto, fit: BoxFit.fitWidth)),
                      // GestureDetector(
                      //     onTap: () {
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //             builder: (context) => PodcastListPage(),
                      //           ));
                      //     },
                      //     child: drawerItem(
                      //         Icons.headset_mic_sharp, "Podcast", context)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = 0;
                              _title = "radio tiam";
                              Navigator.pop(context);
                            });
                          },
                          child:
                              drawerItem(Icons.radio, "Radio Tiam ", context)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = 1;
                              _title = "podcasts";
                              Navigator.pop(context);
                            });
                          },
                          child: drawerItem(Icons.headset_mic_outlined, "Podcasts", context)),

                      GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = 2;
                              _title = "Youtube";
                              Navigator.pop(context);
                            });
                          },
                          child: drawerItem(
                              Icons.ondemand_video, "Youtube ", context)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = 3;
                              _title = "Gallery";
                              Navigator.pop(context);
                            });
                          },
                          child: drawerItem(
                              Icons.photo_camera_front, "Gallery", context)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = 4;
                              _title = "Contact us";
                              Navigator.pop(context);
                            });
                          },
                          child: drawerItem(Icons.quick_contacts_mail,
                              "Contact us", context)),
                    ],
                  ),
                ),
              ),
              appBar: AppBar(
                leading: IconButton(
                    onPressed: () {
                      key.currentState!.openDrawer();
                    },
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    )),
                title: Text(
                  _title,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
              body: body(),
            ));
  }
}

Widget drawerItem(IconData icon, String text, BuildContext context) {
  return Container(
    color: Colors.grey.shade900,
    padding: EdgeInsets.symmetric(
        horizontal: smallSize(context), vertical: standardSize(context)),
    child: Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        Container(
            margin: EdgeInsets.only(left: smallSize(context)),
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 17),
            )),
        Expanded(child: SizedBox()),
        Icon(
          Icons.arrow_forward_ios_sharp,
          color: Colors.white,
        )
      ],
    ),
  );
}
