import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio/pages/main_page.dart';
import 'package:radio/pages/youtube_channel/youtube_viewmodel.dart';
import 'package:radio/styles/assets.dart';
import 'package:radio/styles/dimens.dart';
import 'package:stacked/stacked.dart';

class YoutubeCHannelPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<YoutubeListVM>.reactive(
      viewModelBuilder: () => YoutubeListVM() ,
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
                leading: Icon(Icons.search,color: Colors.white,),
                title: Text("Youtube Channel" , style: TextStyle(color: Colors.white
                    ,fontSize: 18 ,
                      fontStyle: FontStyle.italic),),
                actions: [
                  Icon(Icons.share_sharp,color: Colors.white,)
                ],
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


class YoutubeChannel {
  int id;
  String imageUrl;
  String ArtistName;
  String videoName;

  YoutubeChannel(this.ArtistName, this.id, this.imageUrl, this.videoName);
}


class YoutubeChannelItem extends StatelessWidget{
  final YoutubeChannel youtubeChannel;

  YoutubeChannelItem(this.youtubeChannel);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MainPage(),
          )),

      child: Container(
        margin: EdgeInsets.only(bottom: smallSize(context),left: smallSize(context)),
        //color: Colors.grey.shade900,
        child: Row(

          children: [
            //foto.........
            Container(
              margin: EdgeInsets.only(left: xxlargeSize(context),
                  right: smallSize(context), bottom: smallSize(context),top: xxSmallSize(context)),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 150,
                        height: 80,
                        decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,
                            image: AssetImage(youtubeChannel.imageUrl)),borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: xlargeSize(context),top: smallSize(context),right: smallSize(context)),
                    width: 150,
                    height: 130,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(youtubeChannel.ArtistName,style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.w500 ,fontSize: 18,
                            fontStyle: FontStyle.italic),),
                        Text(youtubeChannel.videoName,style: TextStyle(
                            color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 12,
                            fontStyle: FontStyle.italic),),
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
