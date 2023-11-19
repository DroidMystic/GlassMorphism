import 'package:flutter/material.dart';
import 'package:glassmorphism/glassbox.dart'; 

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('lib/images/background.jpg'),
          fit: BoxFit.cover),
        ),
        child: Center(child: GlassBox(
          height: 600.0,
          width: 345.0,
          child: const Text('F R O S T E D  G L A S S',
          style:TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          ),
        )),
      ),
    );
  }
}