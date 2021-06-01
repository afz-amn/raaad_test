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
              body: Column(
                children: [
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: smallSize(context)),
                    child: Divider(
                      color: Colors.grey.shade800,
                      thickness: 1,
                      height: 0.5,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: xxlargeSize(context), left: xxlargeSize(context)),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.backspace_outlined,
                                size: 23,
                                color: Colors.white70,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Gallery",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(
                                      right: xlargeSize(context)),
                                  child: Icon(Icons.search,
                                      color: Colors.white70)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: xxlargeSize(context),
                        left: smallSize(context),
                        right: smallSize(context)),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 150,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage(HoghogheBasharPhotoGallery)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: xxlargeSize(context)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Human rights",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                              Text(
                                "First meeting - March",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: xxlargeSize(context),
                        left: smallSize(context),
                        right: smallSize(context)),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 150,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(FirstPhotoGallery)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: xxlargeSize(context)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Human rights ",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                              Text(
                                "second meeting - April",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: xxlargeSize(context),
                        left: smallSize(context),
                        right: smallSize(context)),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 150,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(ThirdPhotoGallery)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: xxlargeSize(context)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Traditional Music ",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                              Text(
                                " First meeting - Mai",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ));
  }
}
