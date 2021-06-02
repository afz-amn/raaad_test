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
          backgroundColor: Colors.grey.shade900,
          appBar: AppBar(
            backgroundColor: Colors.grey.shade900,
            leading: IconButton(icon: Icon(Icons.search,color: Colors.white,),
              onPressed: () {},),
            title: Text("Gallery",style: TextStyle(color: Colors.white),),
            actions: [
              IconButton(icon: Icon(Icons.share_sharp,color: Colors.white,), onPressed: (){}),
            ],
            centerTitle: true,
            elevation: 0,
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: largeSize(context),left:largeSize(context),right: largeSize(context) ),
                width: fullWidth(context),
                height: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: Colors.black38,
                ),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: largeSize(context),left:largeSize(context),right: largeSize(context) ),
                      width: largeSize(context),
                      height: 210,

                      child: Stack(
                        children: [
                          Column(children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      image: AssetImage(FirstPhotoGallery),
                                      fit: BoxFit.fill
                                  ),),
                              ),
                            ),
                          ],),

                        ],
                      ),
                    )

                  ],
                ),

              )
            ],
          ),
        ));
  }
}