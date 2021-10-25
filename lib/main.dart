import 'package:flutter/material.dart';
import 'package:rahat_app/pages/homepage.dart';
import 'package:rahat_app/pages/loginpage.dart';
import 'package:rahat_app/pages/routes.dart';

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
      initialRoute: "/login",
      routes: {
        "/": (context) => const LoginPage(),
        MyRouts.homeRoute: (context) => const HomePage(),
        MyRouts.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}
