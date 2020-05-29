import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tnes/ui/launcher/launcher_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Guck devices that don't look good in portrait.
  await SystemChrome.setPreferredOrientations( [DeviceOrientation.portraitUp] );
  runApp(UniverseApp());
}

class UniverseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UNES Admin',
      theme: ThemeData(
        fontFamily: 'Product',
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        snackBarTheme: SnackBarThemeData(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4))
          ),
          behavior: SnackBarBehavior.floating
        ),
        colorScheme: ColorScheme(
          surface: Colors.white,
          background: Colors.white,
          primary: Color(0xFF00a1e0),
          secondary: Color(0xFFFFC107),
          error: Colors.redAccent,
          onBackground: Colors.black,
          onError: Colors.black,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          primaryVariant: Color(0xFF007bb9),
          onSurface: Colors.black,
          secondaryVariant: Color(0xFFff6c00),
          brightness: Brightness.light
        )
      ),
      home: LauncherScreen()
    );
  }
}