import 'package:flutter/material.dart';
import '../widgets/about.dart';
import '../widgets/product.dart';
class Mynavigation extends StatefulWidget {
  const Mynavigation({super.key});

  @override
  State<Mynavigation> createState() => _MynavigationState();
}

class _MynavigationState extends State<Mynavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //AppBar
        appBar:  AppBar(
          //Text
          title: const  Text ('Learn flutter'),
          centerTitle: true,
          //BG Color
          backgroundColor: Colors.deepPurple,
          ///leading
          leading:const Icon(Icons.close),
          //Actions
          actions: [
           IconButton(onPressed: (){} , icon: const Icon(Icons.search)),
            IconButton(onPressed: (){} , icon: const Icon(Icons.more_vert))
          ],
    //shape
          shape:const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
          ) ,
          //elevation
          elevation: 20,
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder:(context) =>const Myproduct()));
                }, 
                child: const Text("Product Page" ,
                style:TextStyle(
                fontSize: 20
              ) ,)
              ),
               ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => const Myabout()));
                }, 
                child: const Text("About Page" ,
                style:TextStyle(
                fontSize: 20
              ) ,)
              ),
            ],
          )),
      );
  }
}