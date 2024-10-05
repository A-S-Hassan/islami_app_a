import 'package:flutter/material.dart';
import 'package:islami_app_a/home/home_screen.dart';
import 'package:islami_app_a/splashScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => HomeScreen(),
        SplashScreen.routeName : (context) => SplashScreen(),
      },
     );
  }
}
