import 'dart:ffi';

import 'package:fluro/fluro.dart';
import 'package:router_by_fluro/login/LoginInfoPage.dart';
import 'package:router_by_fluro/login/LoginPage.dart';
import 'package:router_by_fluro/login/UserInfo.dart';
import 'package:router_by_fluro/route/IRouter.dart';

class LoginRouter extends IRouter{


   static String loginPage = "/login/loginPage";
   static String loginUserInfoPage = "/login/loginUserInfoPage";

  @override
  void initFluroRouter(FluroRouter fluroRouter) {
    // TODO: implement initFluroRouter
    fluroRouter.define(loginPage, handler: Handler(handlerFunc: (_,params){
        String userName = params[LoginPage.bundleKeyUserName]?.first;
        String times = params[LoginPage.bundleKeyTime]?.first;
        return LoginPage(userName,times);
    }));

    fluroRouter.define(loginUserInfoPage, handler: Handler(handlerFunc: (context,params){
      final args = context.settings.arguments as UserInfo;
      return LoginInfoPage(args);
    }));
  }

}