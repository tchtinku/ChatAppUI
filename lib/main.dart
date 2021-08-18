// import 'package:chatapp_ui/home_page.dart';
// import 'package:chatapp_ui/splash_screen.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }
import 'package:chatapp_ui/home_page.dart';
import 'package:flutter/material.dart';
// import 'package:instagram_ui/pages/instagram_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Material App Bar"),
          ),
          body: HomePage(),
        ));
  }
}
