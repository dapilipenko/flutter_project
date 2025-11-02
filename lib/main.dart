import 'package:first_project/app_input.dart';
import 'package:first_project/app_select.dart';
import 'package:flutter/material.dart';

import 'app_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: const Color(0xff66a450)),
      home: Scaffold(
        appBar: AppBar(title: Text('Widget task')),
        body: Center(
          child: Column(
            children: [AppButton(enabled: true), AppInput(), AppSelect()],
          ),
        ),
      ),
    );
  }
}
