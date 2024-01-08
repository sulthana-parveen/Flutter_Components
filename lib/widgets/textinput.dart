

import 'package:flutter/material.dart';

class MytextInput extends StatelessWidget {
  const  MytextInput({super.key});

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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
               children:[
                 const TextField(
                  decoration: InputDecoration(
                    labelText: 'User name',
                    hintText: 'Enter your username',
                    prefixIcon: Icon(Icons.verified_user),
                    suffixIcon: Icon(Icons.verified)
                  ),
                 ),
                 const TextField(
                  decoration: InputDecoration(
                    labelText: 'User name',
                    hintText: 'Enter your username',
                    prefixText: "Mr.",
                    suffixText: "Hello"
                  ),
                 ),
                 const TextField(
                  decoration: InputDecoration(
                    labelText: 'User name',
                    hintText: 'Enter your username',
                    helperText: "Enter your username or email",
                    hintStyle: TextStyle(
                      fontSize: 20
                    ),
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.pink
                    )
                  ),
                 ),
                 const TextField(
                  maxLength: 10,
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                 ),
                 TextField(
                  decoration: InputDecoration(
                    focusedBorder:     OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.purple,
                        width:2
                      )
                    ),
                     enabledBorder:     OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width:2
                      )
                    ),
                    label: const Text("User Name"),

                  ),
                 ),
                 const TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black12
                  ),
                 )
               ], 
            ),
          ),
        )
      );
  }
}
  
