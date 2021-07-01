import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio/pages/pudcast_list/podcost_list_viewmodel.dart';
import 'package:radio/pages/pudcast_list/pudcast_list_page.dart';
import 'package:stacked/stacked.dart';
import '../gallery/Gallery_page.dart';
import '../youtube_channel/youtube_list_page.dart';
import 'package:radio/styles/assets.dart';
import 'package:radio/styles/dimens.dart';

import '../contact_us/contacts_page.dart';

class MainRadioPage extends StatefulWidget {
  final AudioPlayer advancedPlayer = AudioPlayer();

  @override
  State<StatefulWidget> createState() => MainRadioPageState();
}
class MainRadioPageState extends State<MainRadioPage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  bool? seekDone;

  @override
  void initState() {
    widget.advancedPlayer.onSeekComplete
        .listen((event) => setState(() => seekDone = true));

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
    return Scaffold(
      key: key,
      backgroundColor: Colors.black87,
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
            margin: EdgeInsets.symmetric(horizontal: smallSize(context)),
            child: Divider(
              color: Colors.grey.shade800,
              thickness: 1,
              height: 0.5,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: mediumSize(context)),
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
            margin: EdgeInsets.symmetric(horizontal: standardSize(context)),
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
                        "    Immer und Überall an Ihrer Seite",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: fullWidth(context) / 20,
                            color: Colors.white,
                            fontStyle: FontStyle.italic),
                      ),
                      Text(
                        "Mit dem Live Radio Tiam , 94.0 ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: fullWidth(context) / 28,
                            color: Colors.white,
                            fontStyle: FontStyle.italic
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
                  // child: Container(
                  //   margin: EdgeInsets.all(xlargeSize(context)),
                  //   child: Icon(
                  //     Icons.arrow_back_ios_rounded,
                  //     color: Colors.white70,
                  //     size: 30,
                  //   ),
                  // ),
                  ),
              Container(
                margin: EdgeInsets.all(xxlargeSize(context)),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey, width: 2)),
                width: fullWidth(context) / 4,
                child: IconButton(
                  onPressed: () async {
                    if (widget.advancedPlayer.state == PlayerState.PLAYING) {
                      setState(() {
                        widget.advancedPlayer.pause();
                      });
                    } else {
                      setState(() {
                        widget.advancedPlayer
                               .setUrl("https://securestream.o94.at/live.mp3");
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
                  // child: Container(
                  //   margin: EdgeInsets.all(xlargeSize(context)),
                  // child: Icon(
                  //   Icons.arrow_forward_ios_rounded,
                  //   color: Colors.white70,
                  //   size: 30,
                  // ),
                  ),
              // ),
            ],
          ),
        ],
      ),
    );
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
