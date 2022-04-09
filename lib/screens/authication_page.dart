import 'package:flutter/material.dart';
import 'package:flutter_chat_app_beng/screens/home_page.dart';
import 'package:flutter_chat_app_beng/screens/register_page.dart';

class AuthicationPage extends StatefulWidget {
  const AuthicationPage({Key? key}) : super(key: key);

  @override
  State<AuthicationPage> createState() => _AuthicationPageState();
}

class _AuthicationPageState extends State<AuthicationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShowLogoApp(),
            ShowText(),
            TextFieldEmail(),
            TextFieldPassword(),
            CustomButton(context),
            TextButtonCreateAccount(),
          ],
        ),
      ),
    );
  }

  Container TextButtonCreateAccount() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Don't have account"),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterPage(),
                  ));
            },
            child: Text('Create Account'),
          )
        ],
      ),
    );
  }

  GestureDetector CustomButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
            (route) => false);
      },
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: MediaQuery.of(context).size.width * 0.6,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  Widget TextFieldPassword() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'password :',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.blue)),
        ),
      ),
    );
  }

  Widget TextFieldEmail() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'email :',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.blue)),
        ),
      ),
    );
  }

  Widget ShowLogoApp() {
    return Container(
      width: 200,
      child: Image.asset('images/logo_app.png'),
    );
  }

  Widget ShowText() {
    return Text(
      'Work Shop Caht App',
      style: TextStyle(
          color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
