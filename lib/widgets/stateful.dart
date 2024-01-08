import 'package:flutter/material.dart';

class MyStateful extends StatefulWidget {
  const MyStateful({super.key});

  @override
  State<MyStateful> createState() => _MyStatefulState();
}

class _MyStatefulState extends State<MyStateful> {
  var dspText = "Hello world";
  var iconColorLike= Colors.black;
  var iconColorDisLike= Colors.black;
  void changeText(){
    setState(() {
      dspText="Good Morning !";
    });
  }
  void changeTextHello(){
    setState(() {
      dspText="Hello world";
    });
  }
  void changeClrLike(){
    setState(() {
      if(iconColorLike ==  Colors.black){
          iconColorLike = Colors.blue;
      } else{
         iconColorLike = Colors.black;
      }
    });
    
  }
   void changeClrDLike(){
    setState(() {
      if(iconColorDisLike ==  Colors.black){
          iconColorDisLike = Colors.red;
      } else{
         iconColorDisLike = Colors.black;
      }
    });
    
  }
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
        body:  Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(dspText,
            style:const TextStyle(
              fontSize: 25
            ) ,),
            ElevatedButton(
              onPressed:(){
                changeText();
              },
              child: const Text('Change Text',
              style: TextStyle(
                fontSize: 20
              ),),),
              ElevatedButton(
              onPressed:(){
               changeTextHello();
              },
              child: const Text('Hello World',
              style: TextStyle(
                fontSize: 20
              ),),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: (){
                      changeClrLike();
                    }, 
                    icon: const Icon(Icons.thumb_up),
                    iconSize: 35,
                    color: iconColorLike,),
                  IconButton(
                    onPressed: (){
                      changeClrDLike();
                    }, 
                    icon: const Icon(Icons.thumb_down),
                    iconSize: 35,
                    color: iconColorDisLike,),
                ],
              )
          ],
        ),)
      );
  }
}