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
            leading: CustomIconHeader(icon: Icons.refresh_rounded, onPressed: () { setState(() { clickCounter = 0; });}),
            actions: [
              CustomIconHeader(icon: Icons.settings, onPressed: () {}),
              CustomIconHeader(icon: Icons.list, onPressed: () {})
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
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingAB(icon: Icons.exposure_plus_1_outlined, onPressed: () {
                setState(() {
                  clickCounter++;
                });
              }),
              const SizedBox(height: 25.0,),
              FloatingAB(icon: Icons.exposure_minus_1_outlined, onPressed: () {
                setState(() {
                  if (clickCounter > 0) clickCounter--;
                });
              }),
            ],
          )
        );
  }
}

class CustomIconHeader extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomIconHeader({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
    );
  }
}

class FloatingAB extends StatelessWidget {
  
  final IconData icon;
  final VoidCallback? onPressed;

  const FloatingAB({
    required this.icon,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon)
    );
  }
}