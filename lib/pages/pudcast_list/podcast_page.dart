import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio/pages/pudcast_list/podcost_list_viewmodel.dart';
import 'package:radio/pages/pudcast_list/pudcast_list_page.dart';
import 'package:stacked/stacked.dart';
import '../gallery/Gallery_page.dart';
import '../radio/main_radio_page.dart';
import '../youtube_channel/youtube_list_page.dart';
import 'package:radio/styles/assets.dart';
import 'package:radio/styles/dimens.dart';

import '../contact_us/contacts_page.dart';

class PodcastPage extends StatefulWidget {
  final int podcastIndex;
  final PodcastListVM viewModel;

  final AudioPlayer advancedPlayer = AudioPlayer();

  PodcastPage(this.viewModel, {this.podcastIndex = 0});

  @override
  State<StatefulWidget> createState() => PodcastPageState();
}

class PodcastPageState extends State<PodcastPage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  bool? seekDone;

  @override
  void initState() {
    widget.advancedPlayer.onSeekComplete
        .listen((event) => setState(() => seekDone = true));
    widget.advancedPlayer
        .setUrl(widget.viewModel.data![widget.podcastIndex].url);
    super.initState();
  }

  @override
  void dispose() {
    // widget.advancedPlayer.stop();
    widget.advancedPlayer.release();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PodcastListVM>.reactive(
        viewModelBuilder: () => widget.viewModel,
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
                          "Radio Tiam",
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

                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MainRadioPage(),
                                ));
                          },
                          child: drawerItem(
                              Icons.radio, "Radio Tiam ", context)),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => YoutubeListPage(),
                                ));
                          },
                          child: drawerItem(
                              Icons.ondemand_video, "You-Tube Videos", context)),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GalleryPage(),
                                ));
                          },
                          child: drawerItem(
                              Icons.photo_size_select_actual_outlined, "Gallery ", context)),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PodcastListPage(),
                                ));
                          },
                          child: drawerItem(
                              Icons.record_voice_over, "Podcast", context)),
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
                title: Text(
                  "Radio Tiam",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
              body: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(xlargeSize(context)),
                    height: fullHeight(context) / 2.8,
                    width: fullWidth(context),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(FirstPhoto), fit: BoxFit.cover)),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: smallSize(context)),
                    child: Divider(
                      color: Colors.grey.shade800,
                      thickness: 1,
                      height: 0.5,
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: mediumSize(context)),
                    child: Divider(
                      color: Colors.grey.shade800,
                      thickness: 1,
                      height: 0.5,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: smallSize(context)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Now Playing",
                          style: TextStyle(
                              fontSize: fullWidth(context) / 30,
                              color: Colors.grey.shade700),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: standardSize(context)),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: smallSize(context)),
                          child: Column(
                            children: [
                              Text(
                                " ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: fullWidth(context) / 25,
                                    color: Colors.white),
                              ),
                              Text(
                                model.data![widget.podcastIndex].artistName,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: fullWidth(context) / 20,
                                    color: Colors.white),
                              ),
                              Text(
                                model.data![widget.podcastIndex].musicName,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: fullWidth(context) / 30,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Container(
                          margin: EdgeInsets.all(xlargeSize(context)),
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.white70,
                            size: 30,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(xxlargeSize(context)),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey, width: 2)),
                        width: fullWidth(context) / 4,
                        child: IconButton(
                          onPressed: () async {
                            if (widget.advancedPlayer.state ==
                                PlayerState.PLAYING) {
                              setState(() {
                                widget.advancedPlayer.pause();
                              });
                            } else {
                              setState(() {
                                widget.advancedPlayer.resume();
                              });
                            }
                          },
                          icon: Icon(
                            widget.advancedPlayer.state == PlayerState.PLAYING
                                ? Icons.pause
                                : Icons.play_arrow,
                            color: Colors.white70,
                            size: fullWidth(context) / 6,
                          ),
                        ),
                        height: fullWidth(context) / 4,
                      ),
                      Container(
                        child: Container(
                          margin: EdgeInsets.all(xlargeSize(context)),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white70,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
