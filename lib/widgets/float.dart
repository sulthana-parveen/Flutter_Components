import 'package:flutter/material.dart';

class Myfloat extends StatefulWidget {
  const Myfloat({super.key});

  @override
  State<Myfloat> createState() => _MyfloatState();
}

class _MyfloatState extends State<Myfloat> {
  int indexNum = 0;
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
        bottomNavigationBar: BottomNavigationBar(
         
          items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label:"Home",
            backgroundColor: Colors.deepPurple),
              BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label:"Profile",
            backgroundColor: Colors.deepPurple),
              BottomNavigationBarItem(
            icon: Icon(Icons.dashboard), 
            label:"Dashboard",
            backgroundColor: Colors.deepPurple),
              BottomNavigationBarItem(
            icon: Icon(Icons.settings), 
            label:"Settings",
            backgroundColor: Colors.deepPurple),
               ],
            currentIndex:indexNum ,
            iconSize: 30,
            onTap: (int index){
            setState(() {
              indexNum =index;
            });
          },),
          floatingActionButton: FloatingActionButton(
            onPressed:(){},
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const Icon(Icons.add), 
            ),
        
        body:  const Center()
      );
  }
}