import 'package:flutter/material.dart';
import 'package:simple_cv_online/MyCV.dart';
import 'package:simple_cv_online/utils/app_theme.dart';
import 'package:simple_cv_online/view/main_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple CV Online',
      // debugShowCheckedModeBanner: false,

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const MainView(),
    );
  }
}
