import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'funtion.dart';
import 'screen.dart';
import 'user.dart';
import 'screen2.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
        ChangeNotifierProvider(create: (_) => UserModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => CounterScreen(),
        '/user': (context) => UserPage(),
      },
    );
  }
}
