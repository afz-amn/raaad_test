import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio/models/podcast.dart';
import 'package:radio/pages/contact_us/contacts_page.dart';
import 'package:radio/pages/main_page.dart';
import 'package:radio/pages/pudcast_list/podcost_list_viewmodel.dart';
import 'package:radio/pages/youtube_channel/Youtube.dart';
import 'package:stacked/stacked.dart';
import 'package:radio/styles/assets.dart';
import 'package:radio/styles/dimens.dart';

import '../Gallery_page.dart';

class PodcastListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PodcastListState();
}

class PodcastListState extends State<PodcastListPage>
    with SingleTickerProviderStateMixin {
  double valueCurrent = 0;
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

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
                          "Podcast List",
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => YoutubeCHannelPage(),
                                ));
                          },
                          child: drawerItem(
                              Icons.ondemand_video, "Youtube ", context)),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GalleryPage(),
                                ));
                          },
                          child: drawerItem(
                              Icons.photo_camera_front, "Gallery ", context)),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ContactsPage(),
                                ));
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
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.share_outlined,
                        color: Colors.white,
                      )),
                ],
                title: Text(
                  "Radio Tiam",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
              body: ListView.builder(
                  itemCount: model.data?.length ?? 0,
                  itemBuilder: (context, index) =>
                      PodcastItemWidget(model.data![index])),
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

class PodcastItemWidget extends StatelessWidget {
  final Podcast podcast;

  PodcastItemWidget(this.podcast);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MainPage(podcast),
          )),
      child: Container(
        margin: EdgeInsets.only(
            bottom: smallSize(context), left: smallSize(context)),
        //color: Colors.grey.shade900,
        child: Row(
          children: [
            //foto.........
            Container(
              margin: EdgeInsets.only(
                  left: smallSize(context),
                  right: smallSize(context),
                  bottom: smallSize(context),
                  top: xxSmallSize(context)),
              child: Row(
                children: [
                  Container(
                    width: fullWidth(context) / 3.2,
                    height: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(podcast.imageUrl)),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: xlargeSize(context),
                        top: smallSize(context),
                        right: smallSize(context)),
                    width: fullWidth(context) / 2,
                    height: 130,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          podcast.artistName,
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              fontStyle: FontStyle.italic),
                        ),
                        Text(
                          podcast.musicName,
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            Expanded(child: SizedBox()),
          ],
        ),
        width: fullWidth(context),
        height: 100,
      ),
    );
  }
}
