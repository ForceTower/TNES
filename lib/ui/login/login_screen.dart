import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tnes/R.dart';
import 'package:tnes/ui/logging_in/logging_in_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginScreen();
  }
}

class _LoginScreen extends State<LoginScreen> {
  final _username = TextEditingController();
  final _password = TextEditingController();

  _onLogin() {
    final username = _username.text;
    final password = _password.text;

    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => LoggingInScreen(username: username, password: password),
    ));
  }

  _onNoAccount() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(bottom: 48, top: 24),
          children: <Widget>[
            Container(
              child: Hero(
                tag: 'logo_transition',
                child: Image(
                  image: AssetImage(R.drawable_logo),
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Vamos começar',
                    style: TextStyle(
                      fontSize: 22,
                      color: Theme.of(context).colorScheme.onBackground
                    ),
                  ),
                  Container(height: 4),
                  Text(
                    'Entre usando a conta criada para você',
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.54)
                    ),
                  ),
                  Container(height: 24),
                  TextField(
                    controller: _username,
                    decoration: InputDecoration(
                      labelText: 'Usuário',
                      contentPadding: EdgeInsets.symmetric(horizontal: 8)
                    ),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground
                    ),
                  ),
                  Container(height: 16),
                  TextField(
                    controller: _password,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      contentPadding: EdgeInsets.symmetric(horizontal: 8)
                    ),
                    obscureText: true,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground
                    ),
                  ),
                  Container(height: 36),
                  MaterialButton(
                    onPressed: _onLogin,
                    minWidth: double.infinity,
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: _onNoAccount,
                    minWidth: double.infinity,
                    child: Text(
                      'Não tem uma conta?',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}