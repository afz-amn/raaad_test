import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio/styles/dimens.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(
                xxlargeSize(context),
              ),
              child: Text(
                  "dasasdadsdaskdaskjadskjasdkasdklasdlkjasdjklasdkjlasdkljasdjklasdjklasdjkdaskjlasdkjlasdlkjasdklj"),
            ),
            Container(
              margin: EdgeInsets.all(largeSize(context)),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    prefix: Icon(Icons.build),
                    labelText: "ارتباط با ما"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
