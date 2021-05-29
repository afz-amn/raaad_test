import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio/styles/assets.dart';
import 'package:radio/styles/dimens.dart';

import 'main_page.dart';

class PodcastListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PodcastListPageState();
}

class PodcastListPageState extends State<PodcastListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight: 350,
            pinned: true,
            stretch: true,
            leading: Icon(
              Icons.mode_rounded,
              color: Colors.deepPurple.shade800,
            ),
            flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "        Lindsy Stirling",
                  style: TextStyle(color: Colors.purple.shade900,
                  fontSize: 15),
                ),
                stretchModes: [StretchMode.zoomBackground],
                background: Container(
                  child: 
                  Image.asset(microphone),
                )),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return PodcastItem(podcastList()[index]);
              },
              childCount: podcastList().length,
            ),
          ),
        ],
      ),
    );
  }
}

List<Podcast> podcastList() {
  List<Podcast>? podcasts = [];

  podcasts.add(Podcast("Halo Theme Song ", 0, "imageUrl", "Lindsey Stirling . first song"));
  podcasts.add(Podcast("Shatter Me", 0, "imageUrl", "Lindsey Stirling . second song"));
  podcasts.add(Podcast("Beautiful Times", 0, "imageUrl", "Lindsey Stirling . third song"));
  podcasts.add(Podcast("Brave Enough", 0, "imageUrl", "Lindsey Stirling . fourth song"));
  podcasts.add(Podcast("Papaoutai", 0, "imageUrl", "Lindsey Stirling . first song"));
  podcasts.add(Podcast("Somrthing Wild", 0, "imageUrl", "Lindsey Stirling . third song"));
  podcasts.add(Podcast("Lost Girls", 0, "imageUrl", "Lindsey Stirling . first song"));
  podcasts.add(Podcast("Dying for you", 0, "imageUrl", "Lindsey Stirling . first song"));
  podcasts.add(Podcast("Spring without you", 0, "imageUrl", "Lindsey Stirling . first song"));
  podcasts.add(Podcast("River Flows In You", 0, "imageUrl", "Lindsey Stirling . fourth song"));
  podcasts.add(Podcast("You and me", 0, "imageUrl", "Lindsey Stirling . first song"));
  podcasts.add(Podcast("My lovely days", 0, "imageUrl", "Lindsey Stirling . last song"));
  podcasts.add(Podcast("Artemis", 0, "imageUrl", "Lindsey Stirling . last song"));
  podcasts.add(Podcast("Gavi's Song", 0, "imageUrl", "Lindsey Stirling . eighth song"));
  podcasts.add(Podcast("Warmer in the Winter", 0, "imageUrl", "Lindsey Stirling . first song"));
  podcasts.add(Podcast("Hold My Heart", 0, "imageUrl", "Lindsey Stirling . last song"));


  return podcasts;
}

class Podcast {
  int id;
  String imageUrl;
  String ArtistName;
  String musicName;

  Podcast(this.ArtistName, this.id, this.imageUrl, this.musicName);
}

class PodcastItem extends StatelessWidget {
  final Podcast podcast;

  PodcastItem(this.podcast);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MainPage(),
          )),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: largeSize(context)),
        child: Row(
          children: [
            Text(
              podcast.id.toString(),
              style: TextStyle(color: Colors.white),
            ),

            //foto.........
            Container(
              width: 60,
              margin: EdgeInsets.symmetric(horizontal: smallSize(context)),
              height: 60,
              child:
              Image.asset(podcastPhotos ,fit: BoxFit.cover,),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: smallSize(context)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(podcast.musicName,
                      style: TextStyle(color: Colors.white)),
                  Text(podcast.ArtistName,
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            Icon(
              Icons.arrow_downward_outlined,
              color: Colors.white,
            ),
            Container(
                margin: EdgeInsets.only(left: xSmallSize(context)),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )),
          ],
        ),
        width: fullWidth(context),
        height: 100,
      ),
    );
  }
}
