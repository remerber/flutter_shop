import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../routers/router_handler.dart';

class Routes {
  static String root = '/';
  static String detailPage = '/detail';
  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          print('ERROR===>ROUTE WAS NOT FOUND!!!!');
        });
    router.define(detailPage, handler: detailsHandler);
  }
}