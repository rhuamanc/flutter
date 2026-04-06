import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/login/login2_page.dart';
import 'package:flutter_application_1/src/login/login_page.dart';

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
      initialRoute: "login",
      routes: {
        "login": (BuildContext context) => LoginPage(),
        "login2": (BuildContext context) => Login2Page(),
      },
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueGrey,
        ),
        //appBarTheme: AppBarTheme(
        //  backgroundColor: Colors.blue,
        //  foregroundColor: Colors.white,
        //),
      ),
    );
  }
}