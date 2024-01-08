import 'package:flutter/material.dart';

class MycheckBox extends StatefulWidget {
  const MycheckBox({super.key});

  @override
  State<MycheckBox> createState() => _MycheckBoxState();
}

class _MycheckBoxState extends State<MycheckBox> {
  bool ?isChecked =true;
  bool ?isChecked1 =true;
  bool ?isChecked2 =true;
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                tristate: true,
                value: isChecked, 
                onChanged: (val){
                  setState(() {
                    isChecked =val;
                  });
                }),
                 Checkbox(
                  activeColor: Colors.deepPurple,
                  checkColor: Colors.black,
                value: isChecked1, 
                onChanged: (val){
                  setState(() {
                    isChecked1 =val;
                  });
                }),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CheckboxListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(30) ),
                    title: const Text("Send Notifications"),
                    subtitle: const Text("Turn On or Off Notifications"),
                    tileColor: Colors.deepPurple,
                    value: isChecked2, 
                    onChanged: (val){
                      setState(() {
                        isChecked2 = val;
                      });
                    }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(30) ),
                    title: const Text("Send Notifications"),
                    subtitle: const Text("Turn On or Off Notifications"),
                    tileColor: Colors.deepPurple,
                    value: isChecked2, 
                    onChanged: (val){
                      setState(() {
                        isChecked2 = val;
                      });
                    }),
                )
            ],
          ),
        )
      );
  }
}