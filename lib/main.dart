import 'package:flutter/material.dart';
import 'package:shuttle_delivery/utils/theme/widget_themes/theme.dart';

import 'features/authentication/screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      //home: LoginScreen(),
      //home: MainScreen(),
      home: HomeScreen(),
    );
  }
}


