import 'package:flutter/material.dart';

class Myimage extends StatelessWidget {
  const Myimage({super.key});

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
            children: [
              Container(
                height: 300,
                width: 300,
                color: Colors.black12,
                child: Image.asset('images/img1.jpg',
                fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(
                height: 300,
                width: 300,
               child: Image.network(
                'https://cdn.pixabay.com/photo/2020/09/19/19/37/landscape-5585247_640.jpg'),
              )
            ],
          ),
        )
      );
  }
}