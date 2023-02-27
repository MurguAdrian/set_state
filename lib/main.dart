import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool x = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Exerciser',
          ),
          leading: Switch(
            value: x,
            onChanged: (bool y) {
              setState(
                () {
                  x = !x;
                },
              );
            },
            activeColor: Colors.orange,
            inactiveThumbColor: Colors.red,
          ),
          centerTitle: true,
          backgroundColor: x ? Colors.blue : Colors.black87,
        ),
        drawer: const Drawer(),
        body: Container(
          color: x ? Colors.white60 : Colors.black12,
        ),
      ),
    );
  }
}
