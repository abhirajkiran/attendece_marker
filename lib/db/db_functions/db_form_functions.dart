//import 'dart:js';

//import 'dart:js';

//import 'dart:js';

import 'package:attendence_marker2/Screens/sub_details.dart';
import 'package:attendence_marker2/db/db_models/form_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

ValueNotifier<List<formModel>>formList=ValueNotifier([]);


void addSubject(formModel value)async{
  //formList.value.add(value);
 // print(value.toString());

final subListDB= await Hive.openBox<formModel>('subList_db');

  final _id=await subListDB.add(value);
  value.id=_id;
  formList.value.add(value);
  formList.notifyListeners();
}

Future<void> getAllSublist()async{
  final subListDB= await Hive.openBox<formModel>('subList_db');
 formList.value.clear(); 
 formList.value.addAll(subListDB.values);
 formList.notifyListeners();
}

Future<void> goToSubPage(context)async{
 
 Navigator.of(context).push(MaterialPageRoute(builder: (context){
return SubDetails();
 }));
 //Navigator.push(, MaterialPageRoute(builder: (Context) => SubDetails()));

}

