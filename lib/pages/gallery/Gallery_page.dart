import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio/models/gallery.dart';
import 'package:radio/pages/gallery/gallery_viewmodel.dart';
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
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return PhotosItem(model.data![index]);
              },
              childCount: model.data?.length ?? 0,
            ))
          ],
        ),
      ),
    );
  }
}

class PhotosItem extends StatelessWidget {
  final Gallery item;

  PhotosItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: fullWidth(context),
      // color: Colors.black,
      margin: EdgeInsets.all(smallSize(context)),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: mediumSize(context)),
            height: 200,
            width: fullWidth(context),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: NetworkImage(item.imagePath), fit: BoxFit.cover)),
          ),
          Container(
            // color: Colors.black,
            margin: EdgeInsets.symmetric(
                horizontal: mediumSize(context), vertical: smallSize(context)),
            alignment: Alignment.centerLeft,
            child: Text(
              item.title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontStyle: FontStyle.normal),
            ),
          ),
        ],
      ),
    );
  }
}
