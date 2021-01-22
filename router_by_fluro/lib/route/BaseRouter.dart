import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:router_by_fluro/login/LoginRouter.dart';
import 'package:router_by_fluro/route/RouteNotFound.dart';
import 'package:router_by_fluro/route/IRouter.dart';

class BaseRouter{

  static FluroRouter _mFluroRouter;

  static FluroRouter getRouter(){
    return _mFluroRouter;
  }

  static void setRouter(FluroRouter router){
    _mFluroRouter = router;
  }

  static List<IRouter> _mListRouter = [];
  static void registerConfigureRoutes(FluroRouter router){
      if(router == null){
        throw Exception("fluroRouter is null, please init router");
      }

      router.notFoundHandler = Handler(
        handlerFunc:(BuildContext context, Map<String, List<String>> parameters){
          print("页面没有注册，找不到该页面  ");
          return RouteNotFound();
        }
      );

      _mListRouter.clear();
      //添加模块路由
      _mListRouter.add(LoginRouter());

      _mListRouter.forEach((element) {
        element.initFluroRouter(router);
      });
  }

}