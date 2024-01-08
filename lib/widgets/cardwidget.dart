import 'package:flutter/material.dart';

class Mycardwidget extends StatelessWidget {
  const Mycardwidget({super.key});

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
        body:  ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text("John"),
                      subtitle: Text('23 minutes ago'),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/user1.jpg'),
                      ),
                       trailing: Icon(Icons.more_vert),
                    ),
                    const ListTile(
                      title: Text("Good evening"),
                    ),
                   Image.asset('images/img1.jpg'),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.thumb_up)),
                          IconButton(onPressed: (){}, icon: const Icon(Icons.thumb_down)),
                    ],
                   )
                  ],
                )
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text("John"),
                      subtitle: Text('23 minutes ago'),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/user1.jpg'),
                      ),
                       trailing: Icon(Icons.more_vert),
                    ),
                    const ListTile(
                      title: Text("Good evening"),
                    ),
                   Image.asset('images/img2.jpg'),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.thumb_up)),
                          IconButton(onPressed: (){}, icon: const Icon(Icons.thumb_down)),
                    ],
                   )
                  ],
                )
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text("John"),
                      subtitle: Text('23 minutes ago'),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/user1.jpg'),
                      ),
                       trailing: Icon(Icons.more_vert),
                    ),
                    const ListTile(
                      title: Text("Good evening"),
                    ),
                   Image.asset('images/img3.jpg'),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.thumb_up)),
                          IconButton(onPressed: (){}, icon: const Icon(Icons.thumb_down)),
                    ],
                   )
                  ],
                )
              ),
            )
          ],
        )
      );
  }
}