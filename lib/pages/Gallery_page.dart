import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:radio/pages/gallery/gallery_viewmodel.dart';
import 'package:radio/styles/assets.dart';
import 'package:radio/styles/dimens.dart';
import 'package:stacked/stacked.dart';

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GalleryViewModel>.reactive(
        viewModelBuilder: () => GalleryViewModel(),
        builder: (context, model, child) => Scaffold(
          body: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                expandedHeight: 100,
                pinned: true,
                stretch: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text("Gallery", style: TextStyle(color: Colors.white70),),
                  stretchModes: [
                    StretchMode.zoomBackground
                  ],
                  background: Image.network('https://i.pinimg.com/originals/ee/d8/79/eed87935929cba829b0df65c20ba80f5.jpg'),
                ),
              ),
               SliverList(delegate: SliverChildBuilderDelegate(
                   (BuildContext context, int index) {
                     return PhotosItem();
                   },
                 childCount: 15,
               ))
            ],
          ),

          ),
        );
  }

}
class PhotosItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
     width: fullWidth(context),
     height: 250,

     child: Row(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Container(
           width: fullWidth(context),
           height: 200,
           margin: EdgeInsets.all(smallSize(context)),
           child: Row(
             children: [
               Image.asset(FirstPhotoGallery),
             ],
           ),
         ),
         Container(
           width: fullWidth(context),
           height: 100,
           margin: EdgeInsets.all(smallSize(context)),
           child: Row(
             children: [
             Text(" First Photo", style: TextStyle(color: Colors.white,
             fontSize: 17),),
           ],),
         ),
       ],
     ),
   );
  }

}