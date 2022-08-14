import 'package:diskit/home_page.dart';
// ignore: unused_import
import 'package:diskit/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 32, 31, 47),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          tertiary: const Color.fromARGB(25, 32, 31, 47),
          secondary: const Color.fromARGB(50, 32, 31, 47),
          primary: const Color.fromARGB(255, 32, 31, 47),
        ),
      ),
      home: const HomePage(),
    );
  }
}
