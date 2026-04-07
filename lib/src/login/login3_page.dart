import 'package:flutter/material.dart';

class Login3Page extends StatefulWidget {
  const Login3Page({super.key});

  @override
  State<Login3Page> createState() => _Login3PageState();
}

class _Login3PageState extends State<Login3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /**appBar: AppBar(
        title: Text("Login 3", style: TextStyle(fontSize: 20, color: Colors.white)),
        backgroundColor: MyColors.primaryColor,
      ),**/
      body: Stack(
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Theme.of(context).primaryColor
            ),
            //margin: EdgeInsets.only(top: 50, left: 50),
          ),
          Container(
            margin: EdgeInsets.only(top: 60, left: 60),
            child: Text("Login", style: TextStyle(fontSize: 20, color: Colors.black))
          ),
        ],
      ),
    );
  }
}