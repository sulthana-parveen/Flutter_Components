// import 'package:flutter/material.dart';
// import 'package:components_app/widgets/about.dart';
// import 'package:components_app/widgets/card.dart';
// import 'package:components_app/widgets/cardwidget.dart';
// import 'package:components_app/widgets/checkbox.dart';
// import 'package:components_app/widgets/circle.dart';
// import 'package:components_app/widgets/drawer.dart';
// import 'package:components_app/widgets/float.dart';
// import 'package:components_app/widgets/home.dart';
// import 'package:components_app/widgets/navigation.dart';
// import 'package:components_app/widgets/product.dart';
// import 'package:components_app/widgets/radio.dart';
// import 'package:components_app/widgets/stateful.dart';
// import 'package:components_app/widgets/tabBar.dart';
// import 'package:components_app/widgets/tabnav.dart';


// void main(){
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       title: "Demo App",
//       routes: {
//         '/' : (context) => const Myhome(),
//         '/product' :(context) => const Myproduct(),
//         '/about':(context) => const Myabout()
//       },
//       initialRoute: '/',
//     );
//   }
// }
// import 'package:components_app/crud/add.dart';
// import 'package:components_app/crud/home.dart';
// import 'package:components_app/crud/update.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// Future<void> main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       title: "Demo App",
//       routes: {
//         '/' : (context) =>  const HomePage(),
//         '/add':(context) => const AddUser(),
//          '/update':(context) => const updateUser()
//       },
//       initialRoute: '/',
//     );
//   }
// }
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  const Album({
    required this.userId, 
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
    );
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.title);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}