import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio/styles/assets.dart';
import 'package:radio/styles/dimens.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

        appBar: AppBar(

          title: Image.asset(contactUs,
          ),
        ),
        
        body: Container(
          height: fullHeight(context),
          child: ListView(
            children: [

              Container(

                margin: EdgeInsets.only(top: xxlargeSize(context),left: xxlargeSize(context),right: xxlargeSize(context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Contact us",style: TextStyle(fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),),
                        Text("Call us or send a message and \n we'll respond as soon as possible",style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),),
                      ],
                    ),

                     Column(
                      children: [
                        Icon(Icons.quick_contacts_dialer,color: Colors.white,size: 35,)
                      ],
                     ),

                   ],
                ),
              ),


              Container(
                margin: EdgeInsets.all(largeSize(context)),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      prefix: Icon(Icons.drive_file_rename_outline),
                      labelText: " Name ")),
                ),

              Container(
                margin: EdgeInsets.all(largeSize(context)),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,

                      fillColor: Colors.grey,
                      prefix: Icon(Icons.drive_file_rename_outline),
                      labelText: " Email "),
                ),
              ),
              Container(
                margin: EdgeInsets.all(largeSize(context)),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      prefix: Icon(Icons.drive_file_rename_outline),
                      labelText: " Message "),
                ),
              ),
              Container(

                decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue),
                child: InkWell(
                  splashColor: Colors.green, // splash color
                  onTap: () {}, // button pressed
                  child: Container(
                    padding: EdgeInsets.all(10),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.call), // icon
                        Text("Send"), // text
                      ],
                    ),
                  ),
                )
              )
            ],
          ),
        ),
    );
  }
}
