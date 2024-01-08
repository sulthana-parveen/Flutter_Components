import 'package:flutter/material.dart';

class Myradio extends StatefulWidget {
  const Myradio({super.key});

  @override
  State<Myradio> createState() => _MyradioState();
}

class _MyradioState extends State<Myradio> {
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
        body:  Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children:[
              const Text(
                "Select Your Year",
                style: TextStyle(fontSize: 20),
              ),
              ListTile(
                title: const Text("1st Year"),
               leading: Radio(
                value: 'male', 
                groupValue: 'male', 
                onChanged:(value){}),
              )
            ],
          ),)
      );
  }
}