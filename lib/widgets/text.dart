import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  const Mytext({super.key});

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
        body: const Center(
          child: Text("Learn flutter" ,
          style: TextStyle(
             fontSize: 30,
             color: Colors.deepPurple,
             fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic ,
            letterSpacing: 4,
            wordSpacing: 10,
            backgroundColor: Colors.black12,
            shadows: [
              Shadow(
                color: Colors.black, 
                offset: Offset(2,2),
                blurRadius: 15
              )
            ]
          ),
        ),
       
     )

        
      );
  }
}
  