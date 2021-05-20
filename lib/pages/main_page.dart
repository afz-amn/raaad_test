import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:radio/styles/assets.dart';
import 'package:radio/styles/dimens.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainPageState();
}

class MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  double valueCurrent = 0;
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      backgroundColor: Colors.black87,
      drawer: Drawer(
        child: Container(
          color: Colors.grey,
          child: Column(
            children: [
              AppBar(
                title: Text(
                  "منو",
                  style: TextStyle(color: Colors.white),
                ),
                leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                    )),





              ),
              drawerItem(Icons.play_arrow, "asdadssad", context),
              drawerItem(Icons.event, "asdadssad", context),
              drawerItem(Icons.add, "asdadssad", context),
              drawerItem(Icons.circle, "asdadssad", context),
              drawerItem(Icons.circle, "asdadssad", context),
              drawerItem(Icons.circle, "asdadssad", context),
              drawerItem(Icons.circle, "asdadssad", context),
              drawerItem(Icons.circle, "asdadssad", context),
              drawerItem(Icons.circle, "asdadssad", context),
              drawerItem(Icons.circle, "asdadssad", context),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              key.currentState!.openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            )),

        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.white,
              )),
        ],

        title: Text(
          "Radio shemroon",
          style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(standardSize(context)),
            color: Colors.red,
            height: fullHeight(context) / 2.8,
            width: fullWidth(context),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: smallSize(context)),
            child: Divider(
              color: Colors.grey.shade800,
              thickness: 1,
              height: 0.5,
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: smallSize(context)),
            child: Divider(
              color: Colors.grey.shade800,
              thickness: 1,
              height: 0.5,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: smallSize(context)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.play_disabled,
                  color: Colors.deepOrange,
                ),
                Text(
                  "در حال پخش",
                  style: TextStyle(
                      fontSize: fullWidth(context) / 25,
                      color: Colors.white),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: standardSize(context)),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      likeIcon,
                      color: Colors.grey.shade600,
                    )),
                Container(
                  margin: EdgeInsets.only(left: smallSize(context)),
                  child: Column(
                    children: [
                      Text(
                        "در حال پخش",
                        style: TextStyle(
                            fontSize: fullWidth(context) / 25,
                            color: Colors.white),
                      ),
                      Text(
                        "در حال پخش",
                        style: TextStyle(
                            fontSize: fullWidth(context) / 25,
                            color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: smallSize(context)),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 2)),
            width: fullWidth(context) / 4,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: fullWidth(context) / 6,
              ),
            ),
            height: fullWidth(context) / 4,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: smallSize(context)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.volume_down,
                  color: Colors.grey,
                ),
                Expanded(
                  child: Slider(
                    activeColor: Colors.grey,
                    value: valueCurrent,
                    onChanged: (value) {
                      setState(() {
                        valueCurrent = value;
                      });
                    },
                  ),
                ),
                Icon(
                  Icons.volume_mute_rounded,
                  color: Colors.grey,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget drawerItem(IconData icon, String text, BuildContext context) {
  return Container(
    color: Colors.grey,
    padding: EdgeInsets.symmetric(
        horizontal: smallSize(context), vertical: standardSize(context)),
    child: Row(
      children: [
        Icon(icon),
        Container(
            margin: EdgeInsets.only(left: smallSize(context)),
            child: Text(text)),
        Expanded(child: SizedBox()),
        Icon(Icons.arrow_forward_ios_sharp)
      ],
    ),
  );
}
