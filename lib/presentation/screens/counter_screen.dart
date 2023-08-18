import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  
  int clickCounter = 1110;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text("My App"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text( "Counter", style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.w100),),
                Text( '$clickCounter', style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.w100),),
              ],
            )
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              clickCounter++;
              setState(() {});
            },
            child: const Icon(Icons.add)
            ),
        );
  }
}