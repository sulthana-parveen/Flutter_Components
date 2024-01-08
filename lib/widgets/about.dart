import 'package:flutter/material.dart';

class Myabout extends StatefulWidget {
  const Myabout({super.key});

  @override
  State<Myabout> createState() => _MyaboutState();
}

class _MyaboutState extends State<Myabout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About page"),
      ),
       body: const Center(
         child: Text("About Page",
         style: TextStyle(fontSize: 30),),
       ),
    );
  }
}