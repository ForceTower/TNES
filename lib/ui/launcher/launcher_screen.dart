import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tnes/R.dart';

class LauncherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 24),
          child: Image(
            image: AssetImage(R.drawable_logo),
            fit: BoxFit.cover
          ),
        )
      ),
    );
  }
}
