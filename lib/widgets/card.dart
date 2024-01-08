import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  const Mycard({super.key});

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
        body: ListView(
            children: const [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  color: Colors.blueGrey,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Drinks"),
                        subtitle: Text("Soft drinks, Fresh juices, Shakes"),
                        textColor: Colors.white,
                        leading: Icon(Icons.local_drink),
                        iconColor: Colors.white,
                        trailing: Icon(Icons.more_horiz),
                       // onTap: () {},
                      )
                    ],
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  color: Colors.blueGrey,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Desserts"),
                        subtitle: Text("Ice cream, Puddings, Gulab jamun"),
                        textColor: Colors.white,
                        leading: Icon(Icons.amp_stories),
                        iconColor: Colors.white,
                        trailing: Icon(Icons.more_horiz),
                       // onTap: () {},
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  color: Colors.blueGrey,
                  shadowColor: Colors.red,
                  elevation:20 ,
                  shape: RoundedRectangleBorder(
                  //  borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Sweets"),
                        subtitle: Text("Ice cream, Puddings, Gulab jamun"),
                        textColor: Colors.white,
                        leading: Icon(Icons.amp_stories),
                        iconColor: Colors.white,
                        trailing: Icon(Icons.more_horiz),
                       // onTap: () {},
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  color: Colors.blueGrey,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Drinks"),
                        subtitle: Text("Soft drinks, Fresh juices, Shakes"),
                        textColor: Colors.white,
                        leading: Icon(Icons.local_drink),
                        iconColor: Colors.white,
                        trailing: Icon(Icons.more_horiz),
                       // onTap: () {},
                      )
                    ],
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  color: Colors.blueGrey,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Desserts"),
                        subtitle: Text("Ice cream, Puddings, Gulab jamun"),
                        textColor: Colors.white,
                        leading: Icon(Icons.amp_stories),
                        iconColor: Colors.white,
                        trailing: Icon(Icons.more_horiz),
                       // onTap: () {},
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  color: Colors.blueGrey,
                  shadowColor: Colors.red,
                  elevation:20 ,
                  shape: RoundedRectangleBorder(
                  //  borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Sweets"),
                        subtitle: Text("Ice cream, Puddings, Gulab jamun"),
                        textColor: Colors.white,
                        leading: Icon(Icons.amp_stories),
                        iconColor: Colors.white,
                        trailing: Icon(Icons.more_horiz),
                       // onTap: () {},
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  color: Colors.blueGrey,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Drinks"),
                        subtitle: Text("Soft drinks, Fresh juices, Shakes"),
                        textColor: Colors.white,
                        leading: Icon(Icons.local_drink),
                        iconColor: Colors.white,
                        trailing: Icon(Icons.more_horiz),
                       // onTap: () {},
                      )
                    ],
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  color: Colors.blueGrey,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Desserts"),
                        subtitle: Text("Ice cream, Puddings, Gulab jamun"),
                        textColor: Colors.white,
                        leading: Icon(Icons.amp_stories),
                        iconColor: Colors.white,
                        trailing: Icon(Icons.more_horiz),
                       // onTap: () {},
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  color: Colors.blueGrey,
                  shadowColor: Colors.red,
                  elevation:20 ,
                  shape: RoundedRectangleBorder(
                  //  borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Sweets"),
                        subtitle: Text("Ice cream, Puddings, Gulab jamun"),
                        textColor: Colors.white,
                        leading: Icon(Icons.amp_stories),
                        iconColor: Colors.white,
                        trailing: Icon(Icons.more_horiz),
                       // onTap: () {},
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        
      );
  }
}