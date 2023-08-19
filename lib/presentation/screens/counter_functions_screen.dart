import 'package:flutter/material.dart';

class CounterFunctionsScreeen extends StatefulWidget {
  const CounterFunctionsScreeen({super.key});

  @override
  State<CounterFunctionsScreeen> createState() => _CounterFunctionsScreeenState();
}

class _CounterFunctionsScreeenState extends State<CounterFunctionsScreeen> {
  
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text("My Functions App"),
            leading: IconButton(
              onPressed: () {
                
              },
              icon: const Icon(Icons.refresh_rounded),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  
                },
                icon: const Icon(Icons.settings),
              ),
              IconButton(
                onPressed: () {
                  
                },
                icon: const Icon(Icons.info),
              ),
              IconButton(
                onPressed: () {
                  
                },
                icon: const Icon(Icons.list),
              ),
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text( '$clickCounter', style: const TextStyle(fontSize: 80.0, fontWeight: FontWeight.w100),),
                Text( clickCounter == 1 ? 'Click' : 'Clicks', style: const TextStyle(fontSize: 50.0, fontWeight: FontWeight.w100),),
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