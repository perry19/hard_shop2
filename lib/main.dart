import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hardshop2/constants/constants.dart';
import 'package:hardshop2/ui/signin.dart';
import 'package:hardshop2/ui/signup.dart';
import 'package:hardshop2/ui/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
      theme: ThemeData(primaryColor: Colors.blue[200]),
      routes: <String, WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context) =>  SplashScreen(),
        SIGN_IN: (BuildContext context) =>  SignInPage(),
        SIGN_UP: (BuildContext context) =>  SignUpScreen(),
      },
      initialRoute: SPLASH_SCREEN,
    );
  }
}



