import 'package:corelab_challenge/app.dart';
import 'package:corelab_challenge/modules/app_module.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    DevicePreview(
      enabled: false,
      builder: (c) {
        return ModularApp(
          module: AppModule(),
          child: const MyApp(),
        );
      },
    ),
  );
}
