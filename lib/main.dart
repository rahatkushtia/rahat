import 'package:flutter/material.dart';
import 'package:rahat_app/pages/homepage.dart';
import 'package:rahat_app/pages/loginpage.dart';
import 'package:rahat_app/pages/profile.dart';
import 'package:rahat_app/pages/routes.dart';
import 'package:rahat_app/pages/setting.dart';
import 'package:rahat_app/pages/singup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.purple),
      darkTheme: ThemeData(brightness: Brightness.light),
      initialRoute: MyRoutes.singupRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.profileRoute: (context) => ProFile(),
        MyRoutes.settingRoute: (context) => Setting(),
        MyRoutes.singupRoute: (context) => SingupPage(),
      },
    );
  }
}
