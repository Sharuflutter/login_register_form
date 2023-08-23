import 'package:flutter/material.dart';
import 'package:login_register_form/login_page.dart';
import 'package:login_register_form/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: 'login',
      routes: {
        'login':(context)=>LoginPage(),
        'register':(context)=>RegisterPage(),
      },
      home: const LoginPage(),
    );
  }
}

