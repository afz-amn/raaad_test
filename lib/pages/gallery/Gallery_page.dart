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
                title: Text(
                  "Gallery",
                  style: TextStyle(color: Colors.white70),
                ),
                stretchModes: [StretchMode.zoomBackground],
                background: Image.network(
                    'https://i.pinimg.com/originals/ee/d8/79/eed87935929cba829b0df65c20ba80f5.jpg'),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
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

class PhotosItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: fullWidth(context),
      padding: EdgeInsets.all(smallSize(context)),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: mediumSize(context)),
            height: 200,
            width: fullWidth(context),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage(FirstPhotoGallery), fit: BoxFit.cover)),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: mediumSize(context),vertical: smallSize(context)),
            alignment: Alignment.centerLeft,
            child: Text(
              " First Photo",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
