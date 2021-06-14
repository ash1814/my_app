
import 'package:flutter/material.dart';
import 'package:my_app/details.dart';
import 'package:my_app/form.dart';
import 'package:my_app/login.dart';


void main() => runApp(new MyApp());

class MyApp extends StatefulWidget{
  _MyAppState createState() => new _MyAppState();

}

class _MyAppState extends State<MyApp> {

  String _title = 'Welcome to SManager';
  late Widget _screen;
  late login _login;
  late form _form;
  late bool _authenticated;

  _MyAppState() {
    _login = new login(key: ObjectKey(''), onSubmit: () {
      onSubmit();
    });
    _form = new form();
    _screen = _login;
    _authenticated = false;
  }


  void onSubmit() {
    print('Login with: ' + _login.username + ' ' + _login.password);
    if(_login.username == 'user' && _login.password == 'password'){
      _setAuthenticated(true);
    }

}

  void _goHome(){
  print('go home $_authenticated');
  setState(() {
    if(_authenticated == true){
      _screen = _form;
    }
    else{
      _screen = _login;
    }
  }
  );
  }
  void _logout(){
  print('log out');
  _setAuthenticated(false);
  }

  void _setAuthenticated(bool auth){
    setState(() {
      if(auth == true){
      _screen = _form;
      _title = "Welcome to sManager";
      _authenticated = true;
      }
      else{
        _screen = _login;
        _title = "Please Login";
        _authenticated = false;
      }
    }
    );
  }

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'Login Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.home), onPressed: (){_goHome();},),
            new IconButton(icon: new Icon(Icons.exit_to_app), onPressed: (){_logout();},)
          ],
        ),
        body: _screen,
      ),
    );
  }
}