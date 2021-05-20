import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
              color: Colors.white,
            ),
            flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "Ali lohrasbi",
                  style: TextStyle(color: Colors.white),
                ),
                stretchModes: [StretchMode.zoomBackground],
                background: Container(
                  color: Colors.red,
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

  podcasts.add(Podcast("ArtistName", 0, "imageUrl", "asdasdasd"));
  podcasts.add(Podcast("asdasdasd", 0, "imageUrl", "p[pp"));
  podcasts.add(Podcast("czxzxc", 0, "imageUrl", "rgtrgf"));
  podcasts.add(Podcast("dasasd", 0, "imageUrl", "asdasdasdg"));
  podcasts.add(Podcast("qeqqweq", 0, "imageUrl", "asdssadgh"));
  podcasts.add(Podcast("qeqqweq", 0, "imageUrl", "asdssadgh"));
  podcasts.add(Podcast("qeqqweq", 0, "imageUrl", "asdssadgh"));
  podcasts.add(Podcast("qeqqweq", 0, "imageUrl", "asdssadgh"));
  podcasts.add(Podcast("qeqqweq", 0, "imageUrl", "asdssadgh"));
  podcasts.add(Podcast("qeqqweq", 0, "imageUrl", "asdssadgh"));
  podcasts.add(Podcast("qeqqweq", 0, "imageUrl", "asdssadgh"));
  podcasts.add(Podcast("qeqqweq", 0, "imageUrl", "asdssadgh"));
  podcasts.add(Podcast("qeqqweq", 0, "imageUrl", "asdssadgh"));
  podcasts.add(Podcast("qeqqweq", 0, "imageUrl", "asdssadgh"));
  podcasts.add(Podcast("qeqqweq", 0, "imageUrl", "asdssadgh"));
  podcasts.add(Podcast("qeqqweq", 0, "imageUrl", "asdssadgh"));
  podcasts.add(Podcast("qeqqweq", 0, "imageUrl", "asdssadgh"));
  podcasts.add(Podcast("qeqqweq", 0, "imageUrl", "asdssadgh"));

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
            Container(
              width: 60,
              margin: EdgeInsets.symmetric(horizontal: smallSize(context)),
              color: Colors.blue,
              height: 60,
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
              Icons.build,
              color: Colors.white,
            ),
            Container(
                margin: EdgeInsets.only(left: xSmallSize(context)),
                child: Icon(
                  Icons.build,
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
