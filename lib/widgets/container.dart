import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
          child: Container(
           // color: Colors.blueAccent,
            height: 300,
            width: double.infinity,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(50),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              border:Border.all(color: Colors.lightGreen,width: 5),
              borderRadius: BorderRadius.circular(50),
              boxShadow: const [
                BoxShadow(
                color: Colors.black,offset: Offset(5,5),blurRadius: 20
              )]
           ),
            child: const Text(
              "Hello world",
              style: TextStyle(fontSize: 25,color: Colors.white),
            ),
          ),
        )
      );
  }
}