import 'package:flutter/material.dart';
import 'package:flutter_chat_app_beng/screens/authication_page.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatApp',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: AuthicationPage(),
    );
  }
}
