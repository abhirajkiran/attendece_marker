
import 'package:attendence_marker2/db/db_functions/db_form_functions.dart';
import 'package:attendence_marker2/db/db_models/form_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'Home.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

 if(!Hive.isAdapterRegistered(formModelAdapter().typeId)){
  Hive.registerAdapter(formModelAdapter());
 }

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