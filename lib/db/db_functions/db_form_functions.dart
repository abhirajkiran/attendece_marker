

import 'package:attendence_marker2/Screens/sub_details.dart';
import 'package:attendence_marker2/db/db_models/form_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../widgets/Home/datePicker.dart';

ValueNotifier<List<formModel>> formList = ValueNotifier([]);
ValueNotifier<double>attpercen=ValueNotifier<double>(0);


void addSubject(formModel value) async {
  final subListDB = await Hive.openBox<formModel>('subList_db');
  final _id = await subListDB.add(value);
  value.id = _id;

  
  formList.value.add(value);
  subListDB.put(_id,value);
  formList.notifyListeners();
}

Future<void> getAllSublist() async {
  final subListDB = await Hive.openBox<formModel>('subList_db');
  formList.value.clear();
  formList.value.addAll(subListDB.values);
  formList.notifyListeners();
  }

Future<void> goToSubPage(context,index) async {
  
  final subListDB = await Hive.openBox<formModel>('subList_db');
  final db=subListDB.get(index);
  print(db?.subName);
 

  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    return SubDetails(subName: db!.subName,attGoal:db.attGoal,staffName: db.staffName,Attendence: db.Attendence,id: index,percentage:db.percentage,);
  }));
  
}

Future addingAttendence(id)async{
  final subListDB = await Hive.openBox<formModel>('subList_db');
  final db=subListDB.get(id);
  
  int att=db!.Attendence++;
  subListDB.put(id,formModel(subName: db.subName, attGoal: db.attGoal, staffName: db.subName, Attendence:db.Attendence++,Absence: db.Absence,percentage: db.percentage));
  print(db.Attendence);

  
  
  

}


Future addingAbsence(id)async{
  
  final subListDB = await Hive.openBox<formModel>('subList_db');
  final db=subListDB.get(id);
  
  int abb=db!.Absence++;
  
  
  
  subListDB.put(id,formModel(subName: db.subName, attGoal: db.attGoal, staffName: db.subName, Attendence:db.Attendence,Absence:db.Absence++,percentage: db.percentage));
  print(db.Absence);
  
  
  
  

}

Future calculateAttPercentage(id)async{

   final sublistDB=await Hive.openBox<formModel>('subList_db');
   final db=sublistDB.get(id);      
    attpercen.value=(db!.Attendence/(db.Absence+db.Attendence))*100;
   sublistDB.put(id, formModel(subName: db.subName, attGoal: db.attGoal, staffName: db.staffName, Attendence: db.Attendence, Absence: db.Absence, percentage:attpercen.value ));
   print(attpercen.value);
  }