import 'package:flutter/material.dart';

import 'custom_shape.dart';

class SentMessageScreen extends StatefulWidget {
  final String message;
  const SentMessageScreen({
    this.message,
  });

  @override
  _SentMessageScreenState createState() => _SentMessageScreenState();
}

class _SentMessageScreenState extends State<SentMessageScreen> {
  static String get message => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 18.0, left: 50, top: 15, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(height: 30),
          Expanded(child: messageTextGroup),
        ],
      ),
    );
  }

  final messageTextGroup = Flexible(
      child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Flexible(
        child: Container(
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.cyan[900],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(18),
            ),
          ),
          child: Text(
            message,
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
      ),
      CustomPaint(painter: CustomShape(Colors.cyan[900])),
    ],
  ));
}
