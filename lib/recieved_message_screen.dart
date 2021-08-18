import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'custom_shape.dart';

class RecievedMessageScreen extends StatefulWidget {
  final String message;
  const RecievedMessageScreen({
    this.message,
  });
  @override
  _RecievedMessageScreenState createState() => _RecievedMessageScreenState();
}

class _RecievedMessageScreenState extends State<RecievedMessageScreen> {
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
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(math.pi),
        child: CustomPaint(
          painter: CustomShape(Colors.grey[300]),
        ),
      ),
      Flexible(
        child: Container(
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(18),
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(18),
            ),
          ),
          child: Text(
            message,
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
        ),
      ),
    ],
  ));
}
