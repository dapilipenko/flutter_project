import 'package:flutter/material.dart';
import 'package:first_project/app_button.dart';
import 'package:first_project/app_input.dart';
import 'package:first_project/app_select.dart';
import 'package:first_project/widgets/animated_counter.dart';

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
        appBar: AppBar(title: const Text('Widget task')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppButton(enabled: true),
              AppInput(),
              AppSelect(),
              AnimatedCounter(
                initialValue: 0,
                maxValue: 20,
                primaryColor: Colors.deepOrange,
                animationDuration: Duration(milliseconds: 500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
