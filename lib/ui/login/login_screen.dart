import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tnes/R.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginScreen();
  }
}

class _LoginScreen extends State<LoginScreen> {

  _onLogin() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(bottom: 48),
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
                    decoration: InputDecoration(
                      labelText: 'Usuário',
                      contentPadding: EdgeInsets.symmetric(horizontal: 8),
                    ),
                  ),
                  Container(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      contentPadding: EdgeInsets.symmetric(horizontal: 8)
                    ),
                    obscureText: true,
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
                    onPressed: _onLogin,
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