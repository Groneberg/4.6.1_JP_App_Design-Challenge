import 'package:flutter/material.dart';
import 'package:jp_app_design_challenge/src/features/overlay/widgets/build_temp_screen_three.dart';
import 'package:jp_app_design_challenge/src/features/home/presentation/screens/home_screen.dart';
import 'package:jp_app_design_challenge/src/features/splash/presentation/screens/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(
      // home: HomeScreen(
      home: MyWidget(
      ),
    );
  }
}
