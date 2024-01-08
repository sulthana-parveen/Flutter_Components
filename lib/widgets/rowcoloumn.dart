import 'package:flutter/material.dart';

class Myrowcoloumn extends StatelessWidget {
  const Myrowcoloumn({super.key});

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
        body: Row(
        mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color:Colors.blue
            ),
            Container(
              width: 100,
              height: 100,
              color:Colors.green
            ),
            Container(
              width: 100,
              height: 100,
              color:Colors.lightGreen
            )
          ],
        )
        

        
      );
  }
}
  
