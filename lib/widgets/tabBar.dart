import 'package:flutter/material.dart';

class MytabBar extends StatefulWidget {
  const MytabBar({super.key});

  @override
  State<MytabBar> createState() => _MytabBarState();
}

class _MytabBarState extends State<MytabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          //AppBar
          appBar:  AppBar(
            bottom: const TabBar(tabs:[
              // Tab(text: 'CHATS'),
              //  Tab(text: 'STATUS'),
              //   Tab(text: 'CALLS')
              Tab(
                icon:Icon(Icons.home),
              ),
              Tab(
                icon:Icon(Icons.settings),
              ),
              Tab(
                icon: Icon(Icons.share),
              ),
            ],
            indicatorColor: Color.fromARGB(255, 85, 4, 99),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight:6 ,
            ),
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
           
            //elevation
            elevation: 20,
          ),
          body: null
        ),
    );
  }
}