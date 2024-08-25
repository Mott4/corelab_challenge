import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Corelab Challenge',
      theme: ThemeData(useMaterial3: true),
      routerConfig: Modular.routerConfig,
    );
  }
}
