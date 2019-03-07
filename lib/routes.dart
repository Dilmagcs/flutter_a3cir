import 'package:flutter/material.dart';
import 'package:flutter_a3cir/pages/register.dart';
import 'package:flutter_a3cir/pages/login.dart';
import 'package:flutter_a3cir/pages/forgotpassword.dart';


Map<String, WidgetBuilder> buildAppRoutes(){
  return{
    '/login':(BuildContext context) => new LoginPage(),
    '/register':(BuildContext context) => new RegisterPage(),
    '/forgotpassword':(BuildContext context) => new ForgotPasswordPage(),
  };
}