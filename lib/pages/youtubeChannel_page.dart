import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio/pages/main_page.dart';
import 'package:radio/pages/pudcast_list_page.dart';
import 'package:radio/styles/assets.dart';
import 'package:radio/styles/dimens.dart';

class YoutubeCHannelPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => YoutubeCHannelPageState();
  }

  class YoutubeCHannelPageState extends State<YoutubeCHannelPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
              expandedHeight: 250,
              pinned: true,
              stretch: true,
            backgroundColor: Colors.black
            ,
              leading: Icon(
                Icons.menu,
                color: Colors.black87,
              ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "       Youtube Videos",
                 style: TextStyle(color: Colors.red,
                  fontSize: 15,
                   fontStyle: FontStyle.italic
                  ),
              ),
              stretchModes: [ StretchMode.zoomBackground],
                background: Container(
                  child:
                  Image.asset(microphone),
                )),
            ),
          SliverList(
               delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index){
                return YoutubeChannelItem(youtubeChannelList()[index]);
              },
            childCount: youtubeChannelList().length,
          ),
          ),
        ],
      ),
    );
  }
  }
List<YoutubeChannel> youtubeChannelList(){
  List<YoutubeChannel>? youtubeChannels = [];

  youtubeChannels.add(YoutubeChannel("music and culture ", 0, "imageUrl", "music and culture.first meeting"));
  youtubeChannels.add(YoutubeChannel("music and culture ", 0, "imageUrl", "music and culture.first meeting"));
  youtubeChannels.add(YoutubeChannel("music and culture ", 0, "imageUrl", "music and culture.first meeting"));
  youtubeChannels.add(YoutubeChannel("music and culture ", 0, "imageUrl", "music and culture.first meeting"));
  youtubeChannels.add(YoutubeChannel("music and culture ", 0, "imageUrl", "music and culture.first meeting"));

  return youtubeChannels;
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
      child:Container(
        margin:EdgeInsets.symmetric(horizontal: largeSize(context)),
        child: Row(
            children: [
            Text(
            youtubeChannel.id.toString(),
            style: TextStyle(color: Colors.white),
         ),
      //foto.........
           Container(
            width: 60,
            margin: EdgeInsets.symmetric(horizontal: smallSize(context)),
            height: 60,
            child:
              Image.asset( youtube2 ,fit: BoxFit.cover,),
          ),

           Container(
              margin: EdgeInsets.symmetric(horizontal: smallSize(context)),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
               Text(youtubeChannel.videoName,
                style: TextStyle(color: Colors.red)),
                Text(youtubeChannel.ArtistName,
                style: TextStyle(color: Colors.red)),
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
