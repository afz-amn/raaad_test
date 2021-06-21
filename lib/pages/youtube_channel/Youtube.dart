import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio/models/youtube_item.dart';
import 'package:radio/pages/pudcast_list/pudcast_list_page.dart';
import 'package:radio/pages/youtube_channel/youtube_viewmodel.dart';
import 'package:radio/styles/dimens.dart';
import 'package:stacked/stacked.dart';

class YoutubeCHannelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<YoutubeListVM>.reactive(
        viewModelBuilder: () => YoutubeListVM(),
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
                      "Youtube Channel",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontStyle: FontStyle.italic),
                    ),

                    flexibleSpace: FlexibleSpaceBar(
                      stretchModes: [StretchMode.zoomBackground],
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return YoutubeChannelItem(model.data![index]);
                      },
                      childCount: model.data?.length ?? 0,
                    ),
                  ),
                ],
              ),
            ));
  }
}


//class YoutubeChannel {
//int id;
// String imageUrl;
//String ArtistName;
//String videoName;

//YoutubeChannel(this.ArtistName, this.id, this.imageUrl, this.videoName);
//}

class YoutubeChannelItem extends StatelessWidget {
  final YoutubeItem youtubeChannel;

  YoutubeChannelItem(this.youtubeChannel);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PodcastListPage(),
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
                  left: standardSize(context),
                  right: smallSize(context),
                  bottom: smallSize(context),
                  top: xxSmallSize(context)),
              child: Row(
                children: [
                  Container(
                    width: fullWidth(context) / 3,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(youtubeChannel.imageUrl)),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: standardSize(context),
                        top: smallSize(context),
                        right: 0),
                    width: fullWidth(context) / 2,
                    height: 130,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          youtubeChannel.title,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              fontStyle: FontStyle.italic),
                        ),
                        Text(
                          youtubeChannel.imageUrl,
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ),
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
