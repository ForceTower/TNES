import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tnes/R.dart';

class LoggingInScreen extends StatefulWidget {
  final String username;
  final String password;

  LoggingInScreen({Key key, this.username, this.password}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoggingInScreen(username: username, password: password);
  }
}

class _LoggingInScreen extends State<LoggingInScreen> {
  final String username;
  final String password;

  _LoggingInScreen({this.username, this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Hero(
              tag: 'logo_transition',
              child: Image(
                image: AssetImage(R.drawable_logo),
                width: 300,
                height: 300
              ),
            ),
          ),
          Container(height: 16),
          Text(
            'Acessando o Universo',
            style: TextStyle(
              fontSize: 18
            ),
          )
        ],
      ),
    );
  }
}