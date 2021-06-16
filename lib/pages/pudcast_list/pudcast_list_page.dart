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
                    backgroundColor: Colors.black38,
                    expandedHeight: 100,
                    pinned: true,
                    stretch: true,
                    leading: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Podcast",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontStyle: FontStyle.italic),
                    ),
                    actions: [
                      Icon(
                        Icons.share_sharp,
                        color: Colors.white,
                      )
                    ],
                    flexibleSpace: FlexibleSpaceBar(
                      stretchModes: [StretchMode.zoomBackground],
                    ),
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
                          image: AssetImage(podcast.imageUrl)),
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
