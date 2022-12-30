import 'package:flutter/material.dart';
import 'package:flutter_application/src/pages/contador_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContadorPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
