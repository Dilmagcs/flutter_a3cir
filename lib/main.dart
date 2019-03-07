import 'package:flutter/material.dart';
import 'package:flutter_a3cir/pages/register.dart';
import 'package:flutter_a3cir/routes.dart';
import 'package:flutter_a3cir/theme.dart';

void main() => runApp(new TodoApp());

class TodoApp extends StatefulWidget{
  @override
  State<StatefulWidget>createState()=> _TodoAppState();
}

class _TodoAppState extends State<TodoApp>{
  Widget rootPage = RegisterPage();

  @override
  Widget build (BuildContext context){
    return MaterialApp(
        title:"TodoApp",
        home:rootPage,
        routes:buildAppRoutes(),
        theme:buildAppTheme(),
    );

  }
}
