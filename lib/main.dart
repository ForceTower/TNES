import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:tnes/core/store/application_store.dart';
import 'package:tnes/themes.dart';
import 'package:tnes/ui/launcher/launcher_screen.dart';
import 'package:tnes/ui/login/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Guck devices that don't look good in portrait.
  await SystemChrome.setPreferredOrientations( [DeviceOrientation.portraitUp] );
  runApp(UniverseApp());
}

class UniverseApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UniverseApp();
  }

}

class _UniverseApp extends State<UniverseApp> {
  final applicationStore = ApplicationStore();

  @override
  void initState() {
    super.initState();
    applicationStore.initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: applicationStore)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'UNES Admin',
        theme: lightTheme,
        darkTheme: darkTheme,
        home: Observer(
          builder: (context) {
            if (!applicationStore.initialized)
              return LauncherScreen();
            return LoginScreen();
          }
        )
      )
    );
  }
}