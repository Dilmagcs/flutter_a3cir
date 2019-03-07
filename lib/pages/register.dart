import 'package:flutter/material.dart';
import 'package:flutter_a3cir/behaviors/hidden.dart';

class RegisterPage extends StatefulWidget{
  @override
  State<StatefulWidget>createState()=> _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{

  String email;
  String password;

  @override
  Widget build (BuildContext context){

    return Scaffold(
      appBar: AppBar(title:Text("Register"),

      ),
       body: Container(
         padding: EdgeInsets.all(20.0),
         child:ScrollConfiguration(
           behavior: Hidden(),
           child:Form(
             child: ListView(children: <Widget>[
               FlutterLogo(
                   style: FlutterLogoStyle.markOnly,
                   size:200.0
               ),
               TextFormField(
                 autocorrect: false,
                 keyboardType: TextInputType.emailAddress,
                 decoration: InputDecoration(labelText: 'Email'),
               ),
               TextFormField(
                 obscureText:true,
                 decoration: InputDecoration(labelText: 'Password'),
               ),

               Padding(
                 padding: EdgeInsets.symmetric(vertical: 20.0),
                 child: Text(
                   'Welcome to Animation3Circle',
                   style: 
                   TextStyle(color: Color.fromARGB(255, 200, 200, 200)),
                 ),
               )
             ],),
           ),

         ),

       ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.person_add),
      ),
      persistentFooterButtons: <Widget>[
        FlatButton(
          onPressed:(){
            Navigator.of(context).pushNamed('/login');
          } ,
          child: Text('Tengo una Cuenta'),
        )
      ],
      );
  }
}