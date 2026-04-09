


import 'package:flutter/material.dart';

class LoginController {
  late BuildContext buildContext;

  Future<void> init(BuildContext buildContext) async{
    this.buildContext=buildContext;
  }

  void goToRegisterPage(){
    Navigator.pushNamed(buildContext, "registro");
  }

}