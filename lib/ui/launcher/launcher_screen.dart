import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tnes/R.dart';
import 'package:tnes/ui/login/login_screen.dart';

class LauncherScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LauncherScreen();
  }
}

class _LauncherScreen extends State<LauncherScreen> {
  @override
  void initState() {
    super.initState();

    // Simulate session check (lul)
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 24),
          child: Hero(
            tag: 'logo_transition',
            child: Image(
              image: AssetImage(R.drawable_logo),
              fit: BoxFit.cover
            ),
          ),
        )
      ),
    );
  }
}
