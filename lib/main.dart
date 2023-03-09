import 'package:flutter/material.dart';
import 'package:master_a_m_t/pages/home_page.dart';
import 'package:master_a_m_t/pages/login_page.dart';
import 'package:master_a_m_t/pages/new_pass_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AMT Master Helper',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[250],
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.orange,
        ),
      ),
      initialRoute: "/login_page",
      routes: {
        "/login_page": (context) => const LoginPage(),
        "/home_page": (context) => const HomePage(),
        "/create_new_pass": (context) => const NewPassPage(),
      },
    );
  }
}
