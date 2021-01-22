import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:router_by_fluro/login/LoginPage.dart';
import 'package:router_by_fluro/login/LoginRouter.dart';
import 'package:router_by_fluro/login/UserInfo.dart';
import 'package:router_by_fluro/route/BaseRouter.dart';
import 'package:router_by_fluro/route/NavigatorUtils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp() {
    BaseRouter.setRouter(FluroRouter());
    BaseRouter.registerConfigureRoutes(BaseRouter.getRouter());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      onGenerateRoute: BaseRouter.getRouter().generator,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    // setState(() {
    //   _counter++;
    // });
    // NavigatorUtils.push(context, "${LoginRouter.loginPage}?${LoginPage.bundleKeyUserName}=${Uri.encodeComponent("你是猪")}");
    ///字符串参数
    // NavigatorUtils.push(
    //     context,
    //     NavigatorUtils.changeToNavigatorPath(LoginRouter.loginPage, params: {
    //       "${LoginPage.bundleKeyUserName}": "你是小猪猪",
    //       "${LoginPage.bundleKeyTime}": "100"
    //     }));

    UserInfo userInfo = UserInfo();
    userInfo.email = "xiaotimel@163.com";
    userInfo.name = "猪猪";
    NavigatorUtils.pushArgument(context, LoginRouter.loginUserInfoPage, userInfo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
