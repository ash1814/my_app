import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

class login extends StatelessWidget{
  const login({
    required Key key,
    required this.onSubmit,
}) :super(key:key);

  final VoidCallback onSubmit;

  static final TextEditingController _user = new TextEditingController();
  static final TextEditingController _pass = new TextEditingController();

  String get username => _user.text;
  String get password => _pass.text;

  @override
  Widget build(BuildContext context) {
   return new Column(
     children: <Widget>[
       new TextFormField(controller: _user,decoration: new InputDecoration(hintText: 'Enter a number'),),
       new TextFormField(controller: _pass,decoration: new InputDecoration(hintText: 'Enter a password'),obscureText: true,),
       new ElevatedButton(onPressed: onSubmit, child: new Text('Submit'))
     ],
   );
  }
}