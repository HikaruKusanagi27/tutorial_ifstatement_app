import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final Random _random = Random();
  @override
  Widget build(BuildContext context) {
    final number = _random.nextInt(101) + 1; // 1から100までのランダム値を生成
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (number <= 10)
                Card(
                  color: Colors.red,
                  child: SizedBox(
                    width: 300,
                    height: 300,
                    child: Center(
                      child: Text(
                        '$number', // 1から100までの数字
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              else
                Card(
                  color: Colors.white,
                  child: SizedBox(
                    width: 300,
                    height: 300,
                    child: Center(
                      child: Text(
                        '$number', // 1から100までの数字
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('Click'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
