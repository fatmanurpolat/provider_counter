import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sekizinci_gun/UI/views/home_screen.dart';
import 'UI/providers/counter_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ListenableProvider<CounterProvider>(
        create: (_) => CounterProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
