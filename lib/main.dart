import 'package:flutter/material.dart';
import 'package:pocketpedia/pages/login/welcome.dart';
import 'package:pocketpedia/styles/theme_provider.dart';
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
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: Welcome()
    );
  }
}
