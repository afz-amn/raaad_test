import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio/pages/contact_us/contacts_page.dart';
import 'package:radio/pages/radio/main_radio_page.dart';
import 'package:radio/pages/pudcast_list/podcost_list_viewmodel.dart';
import 'package:radio/pages/pudcast_list/pudcast_list_page.dart';
import 'package:radio/pages/youtube_channel/Youtube.dart';
import 'package:stacked/stacked.dart';
import 'package:radio/styles/assets.dart';
import 'package:radio/styles/dimens.dart';

import 'gallery/Gallery_page.dart';


class BasePage extends StatefulWidget {
  int _selectedIndex = 0;
  String _title = "radio";

  @override
  State<StatefulWidget> createState() => BasePageState();
}

class BasePageState extends State<BasePage>
    with SingleTickerProviderStateMixin {
  double valueCurrent = 0;
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  Widget body() {
    switch (widget._selectedIndex) {
      case 0:
        return MainRadioPage();
      case 1:
        return PodcastListPage();
      case 2:
        return YoutubeCHannelPage();
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
                          widget._title,
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
                              widget._selectedIndex = 0;
                              widget._title = "radio tiam";
                              Navigator.pop(context);
                            });
                          },
                          child:
                              drawerItem(Icons.radio, "radio tiam ", context)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              widget._selectedIndex = 1;
                              widget._title = "podcasts";
                              Navigator.pop(context);
                            });
                          },
                          child: drawerItem(Icons.radio, "podcasts", context)),

                      GestureDetector(
                          onTap: () {
                            setState(() {
                              widget._selectedIndex = 2;
                              widget._title = "Youtube";
                              Navigator.pop(context);
                            });
                          },
                          child: drawerItem(
                              Icons.ondemand_video, "Youtube ", context)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              widget._selectedIndex = 3;
                              widget._title = "Gallery";
                              Navigator.pop(context);
                            });
                          },
                          child: drawerItem(
                              Icons.photo_camera_front, "Gallery", context)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              widget._selectedIndex = 4;
                              widget._title = "Contact us";
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
                  widget._title,
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
