import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginPage extends StatefulWidget {

  static String bundleKeyUserName = "bundle_key_user_name";
  static String bundleKeyTime = "bundle_key_time";

  String userName;
  String time;

  LoginPage(this.userName,this.time){
    int aa = int.parse(time);
    aa += 100;
    print("string to int  "+aa.toString());
  }

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "登录页面",
          style: TextStyle(fontSize: 16.0, color: Colors.red),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.0,
          ),
          Text(
            "携带的参数  " + widget.userName +" time "+ widget.time,
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.red,
                decoration: TextDecoration.none),
          ),
          GestureDetector(
            onTap: () {
              //TODO click
            },
            child: Container(
              height: 44.0,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(8.0),
              child: Text("click this bottom "),
            ),
          )
        ],
      ),
    );
  }
}
