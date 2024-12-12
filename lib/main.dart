import 'package:flutter/material.dart';
import 'package:pocketpedia/pages/login/welcome.dart';
import 'package:pocketpedia/styles/color/theme_provider.dart';
import 'package:pocketpedia/styles/text/text_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final baseTheme = Provider.of<ThemeProvider>(context).themeData;

    return MaterialApp(
      theme: baseTheme.copyWith(
        textTheme: appTheme.textTheme,
      ),
      home: Welcome(),
    );
  }
}
