import 'package:chatapp_ui/recieved_message_screen.dart';
import 'package:chatapp_ui/send_message_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key, String title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/bg_chat.jpg"), fit: BoxFit.cover)),
      child: ListView(
        shrinkWrap: true,
        children: [
          SentMessageScreen(message: "Hello"),
          RecievedMessageScreen(message: "Hi, how are you"),
          SentMessageScreen(
            message: "I am great how are you doing",
          ),
          RecievedMessageScreen(message: "I am also fine"),
          SentMessageScreen(message: "Can we meet tomorrow?"),
          RecievedMessageScreen(
              message: "Yes, of course we will meet tomorrow"),
        ],
      ),
    );
  }
}
