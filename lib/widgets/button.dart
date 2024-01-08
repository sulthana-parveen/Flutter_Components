

import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  const Mybutton({super.key});

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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                style: ButtonStyle(
                  textStyle: MaterialStateProperty.all((
                  const TextStyle(
                    fontSize: 20,

                  )
                  )),
                  foregroundColor:   MaterialStateProperty.all(Colors.purple)
                ),
                onPressed:(){
                  
                }, 
                child: const Text("Text Button"),),
                TextButton.icon(
                style: ButtonStyle(
                  textStyle: MaterialStateProperty.all((
                  const TextStyle(
                    fontSize: 20,
                    
                  )
                  )),
                  foregroundColor:   MaterialStateProperty.all(Colors.purple)
                ),
                onPressed:(){
                  
                }, 
               icon: const Icon(Icons.home),
               label: const Text("Home"),),
               ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.only(
                    left:50,
                    right:50,
                    top:10,
                    bottom: 10
                  )),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                 // minimumSize: MaterialStateProperty.all(Size(120, 40)),
                  textStyle: MaterialStateProperty.all(const TextStyle(
                    fontSize: 20
                  ))
                ),
                onPressed: (){}, 
                child: const Text('Sign in')),
                OutlinedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)
                    )),
                    side:MaterialStateProperty.all(
                      const BorderSide(color: Colors.purple,width: 2,)
                    ) ,
                    minimumSize: MaterialStateProperty.all(
                      const Size(200, 50)
                    ),
                   foregroundColor: MaterialStateProperty.all(Colors.deepPurple),
                    textStyle: MaterialStateProperty.all(const TextStyle(
                     fontSize: 25
                    ))
                  ),
                  onPressed: (){}, 
                  child: const Text('Sign Up'))
            ],
          ),
        )
      );
  }
}
  
