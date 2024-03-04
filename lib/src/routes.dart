import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:simplecalculator/main.dart';

final MyAppRoutes = RouteMap(routes: {
  "/": (_) => const MaterialPage(child: MyHomePage(title: 'My Home Page'))
});
