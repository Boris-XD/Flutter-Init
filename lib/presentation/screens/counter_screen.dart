import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text("My App"),
          ),
          body: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text( "Counter", style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.w100),),
                Text( "0", style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.w100),),
              ],
            )
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("sdsdsd");
            },
            child: const Icon(Icons.add)
            ),
        );
  }
}