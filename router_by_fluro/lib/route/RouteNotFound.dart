import 'package:flutter/material.dart';

class RouteNotFound extends StatefulWidget {
  @override
  _RouteNotFoundState createState() => _RouteNotFoundState();
}

class _RouteNotFoundState extends State<RouteNotFound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("页面不存在"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          "页面找不到",
          style: TextStyle(
            color: Colors.red,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
