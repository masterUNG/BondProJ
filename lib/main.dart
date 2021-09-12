import 'package:bondproj/states/home.dart';
import 'package:bondproj/utility/my_constant.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> map = {
  '/home': (BuildContext context) => Home(),
};

String? initlalRoute;

main() {
  initlalRoute = MyConstant.routeHome;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: map,
      initialRoute: initlalRoute,
    );
  }
}
