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
              else if (number >= 11 && number <= 20)
                // より大きいか等しい」という意味です
                // 左側の値が右側の値より大きいか、または等しい場合に真になります
                // 例：11 >= 11 は真（true）です
                // 例：12 >= 11 は真（true）です
                // 例：10 >= 11 は偽（false）です

                // &&（論理AND演算子）：
                // 「かつ」という意味です
                // 両側の条件が両方とも真（true）の場合にのみ、全体が真になります
                // 例：A && B は、AとBの両方が真の時だけ真になります

                // 「より小さいか等しい」という意味です
                // 左側の値が右側の値より小さいか、または等しい場合に真になります
                // 例：20 <= 20 は真（true）です
                // 例：19 <= 20 は真（true）です
                // 例：21 <= 20 は偽（false）です
                Card(
                  color: Colors.blue,
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
