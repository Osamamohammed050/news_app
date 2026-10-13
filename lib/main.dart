import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Screens/Home_Page.dart';
// استورد ملف الـ ThemeManager (عدل المسار حسب مكان الملف عندك)
import 'package:news_app/Services/theme_manager.dart'; 

void main() {
  runApp(const MyApp());
}

final dio = Dio(); 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: ThemeManager.themeNotifier,
      builder: (context, currentThemeMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'News Cloud',
          theme: ThemeManager.lightTheme,
          darkTheme: ThemeManager.darkTheme,
          themeMode: currentThemeMode,
          home: const HomePage(),
        );
      },
    );
  }
}