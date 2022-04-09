import 'package:flutter/material.dart';
import 'package:flutter_chat_app_beng/screens/authication_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('WorkShop ChatApp'),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right:10),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AuthicationPage(),
                    ));
              },
              icon: Icon(Icons.logout_rounded),
            ),
          ),
        ],
      ),
      body: Container(),
      floatingActionButton: CustomTextFieldSendMessage(size),
    );
  }

  Widget CustomTextFieldSendMessage(Size size) {
    return Container(
      margin: EdgeInsets.only(left: 40, top: 100),
      height: size.height / 8,
      width: size.height,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: size.height / 10,
          width: size.height,
          child: TextField(
            // controller: msg,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.send,
                  color: Colors.blue,
                ),
              ),
              hintText: 'กรุณากรอกข้อความที่ต้องการส่ง...',
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.blue),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
