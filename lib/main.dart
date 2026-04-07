import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/login/login2_page.dart';
import 'package:flutter_application_1/src/login/login3_page.dart';
import 'package:flutter_application_1/src/login/login4_page.dart';
import 'package:flutter_application_1/src/login/login_page.dart';
import 'package:flutter_application_1/src/utils/my_colors.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      initialRoute: "login4",
      routes: {
        "login": (BuildContext context) => LoginPage(),
        "login2": (BuildContext context) => Login2Page(),
        "login3": (BuildContext context) => Login3Page(),
        "login4": (BuildContext context) => Login4Page(),
      },
      theme: ThemeData(
        primaryColor: MyColors.primaryColor,
        //useMaterial3: true,
        //colorScheme: ColorScheme.fromSeed(
        //  seedColor: Colors.blueGrey,
        //),
        //appBarTheme: AppBarTheme(
        //  backgroundColor: Colors.blue,
        //  foregroundColor: Colors.white,
        //),
      ),
    );
  }
}