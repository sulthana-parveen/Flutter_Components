import 'package:flutter/material.dart';

class Mycircle extends StatelessWidget {
  const Mycircle({super.key});

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
        body:   ListView(
        children :const [
          Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 90,
                  backgroundColor: Colors.black38,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.purpleAccent,
                    foregroundColor: Colors.white,
                    child: Text('SIGN IN', style: TextStyle(
                      fontSize: 30
                    ),),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                 child: CircleAvatar(
                   radius: 80,
                   child: Icon(Icons.verified_user, size: 30,),
                  ),
                ),
               Padding(
                padding: EdgeInsets.all(10.0),
                 child: CircleAvatar(
                   radius: 80,
                   backgroundImage: AssetImage('images/user1.jpg'),
                  ),
                ),
                Padding(
                padding: EdgeInsets.all(10.0),
                 child: CircleAvatar(
                   radius: 80,
                   backgroundImage: NetworkImage(
                    'https://png.pngtree.com/png-clipart/20190924/original/pngtree-female-user-avatars-flat-style-women-profession-vector-png-image_4822944.jpg'
                )
                 ),
                ),
            ],
          ),
        ),]
        ));
  }
}