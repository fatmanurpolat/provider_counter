import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sekizinci_gun/UI/providers/counter_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var counterProvider = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    counterProvider.getCounter.toString(),
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => counterProvider.incrementCounter(),
                child: const Text('Increment'),
              ),
              OutlinedButton(
                onPressed: () => counterProvider.decrementCounter(),
                child: const Text('Decrement'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
