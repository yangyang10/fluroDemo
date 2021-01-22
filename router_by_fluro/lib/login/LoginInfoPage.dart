
import 'package:flutter/material.dart';

import 'UserInfo.dart';

class LoginInfoPage extends StatefulWidget {



  UserInfo userInfo;
  LoginInfoPage(this.userInfo);

  @override
  _LoginInfoPageState createState() => _LoginInfoPageState();
}

class _LoginInfoPageState extends State<LoginInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "用户信息",
          style: TextStyle(fontSize: 16.0),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.0,
          ),
          Text(
            "用户名称  " + widget.userInfo.name +" 邮箱 "+ widget.userInfo.email,
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
