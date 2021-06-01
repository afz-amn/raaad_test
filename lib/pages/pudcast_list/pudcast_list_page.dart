import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio/models/podcast.dart';
import 'package:radio/pages/pudcast_list/podcost_list_viewmodel.dart';
import 'package:radio/styles/assets.dart';
import 'package:radio/styles/dimens.dart';
import 'package:stacked/stacked.dart';

import '../main_page.dart';

class PodcastListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PodcastListVM>.reactive(
        viewModelBuilder: () => PodcastListVM(),
        builder: (context, model, child) => Scaffold(
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
                          style: TextStyle(
                              color: Colors.purple.shade900, fontSize: 15),
                        ),
                        stretchModes: [StretchMode.zoomBackground],
                        background: Container(
                          child: Image.asset(microphone),
                        )),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return PodcastItemWidget(model.data![index]);
                      },
                      childCount: model.data?.length ?? 0,
                    ),
                  ),
                ],
              ),
            ));
  }
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
              child: Image.asset(
                podcastPhotos,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: smallSize(context)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(podcast.musicName,
                      style: TextStyle(color: Colors.white)),
                  Text(podcast.artistName,
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
