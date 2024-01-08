import 'package:components_app/widgets/navigation.dart';
import 'package:flutter/material.dart';

class Myproduct extends StatefulWidget {
  const Myproduct({super.key});

  @override
  State<Myproduct> createState() => _MyproductState();
}

class _MyproductState extends State<Myproduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products page"),
      ),
       body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             const Text("Product Page",
             style: TextStyle(fontSize: 30),),
             ElevatedButton(
              onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder:(context) => const Mynavigation() ));
              }, 
              child: const Text("Home"))
           ],
         ),
       
       ),
    );
  }
}