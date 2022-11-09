import 'package:flutter/material.dart';

import 'counter_7_page.dart';

class MyCounter extends StatelessWidget {
  const MyCounter({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyCounterPage(title: 'Flutter Demo Home Page'),
    );
  }
}
