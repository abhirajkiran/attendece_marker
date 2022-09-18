
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.red
    
    ),
    home: Home(),
    debugShowCheckedModeBanner: false,
   );
   
  }

  


  
}
///
///
///
///
///
/* ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text(titles[index]),
                      subtitle: Text(subtitles[index]),
                      leading: CircleAvatar(
                          ),
                      trailing: Icon(Icons.arrow_forward));
                }
          ); */