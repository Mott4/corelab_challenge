import 'package:corelab_challenge/app.dart';
import 'package:corelab_challenge/modules/app_module.dart';
import 'package:corelab_challenge/modules/categories/view_model/category_controller.dart';
import 'package:corelab_challenge/modules/dashboard/view_model/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DashboardController(),
        ),
        ChangeNotifierProvider(
          create: (_) => CategoryController(),
        ),
      ],
      child: ModularApp(
        module: AppModule(),
        child: const MyApp(),
      ),
    ),
  );
}
