import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              BackButton(context),
              ShowLogoApp(),
              ShowText(),
              TextFieldName(),
              TextFieldEmail(),
              TextFieldPassword(),
              CustomButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget BackButton(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 50),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 35,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }

  GestureDetector CustomButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushAndRemoveUntil(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => HomePage(),
        //     ),
        //     (route) => false);
      },
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: MediaQuery.of(context).size.width * 0.6,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text(
            'Create Account',
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

  Widget TextFieldName() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'name :',
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
